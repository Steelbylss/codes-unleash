<?php

namespace App\Repositories\Chapter;

use App\Repositories\BaseRepository;

use App\Models\Chapter;

class ShowChapterRepository extends BaseRepository
{
    public function execute($referenceNumber){
        $chapter = Chapter::where('reference_number', $referenceNumber)->firstOrFail();
        $allLessons = $chapter->lessons;
        $lessons = [];

        if($allLessons){
            foreach($allLessons as $lesson){
                $lessons[] = [
                    'referenceNumber' => $lesson->reference_number,
                    'lessonNumber' => $lesson->lesson_number,
                    'title' => $lesson->title
                ];
            }
        }

        return $this->success("Chapter Found", [
            'programmingLanguage' => $chapter->programmingLanguage->name,
            'reference_number' => $chapter->reference_number,
            'chapter_name' => $chapter->chapter_name,
            'lessons' => $lessons
        ]);
    }
}
