<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'tbl_events';

    /**
     * The primary key for the model.
     *
     * @var string
     */
    protected $primaryKey = 'event_id';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['event_name', 'event_description', 'event_date', 'event_start_time', 'event_end_time', 'event_location', 'event_type', 'event_attendees'];

    /**
     * The attributes excluded from the model's JSON
     *
     * @var array
     */
    protected $hidden = [];
}