<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Volunteer extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'tbl_volunteers';

    /**
     * The primary key for the model.
     *
     * @var string
     */
    protected $primaryKey = 'volunteers_id';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['volunteers_first_name', 'volunteers_last_name', 'volunteers_email', 'volunteers_phone_number', 'volunteers_address', 'volunteers_city', 'volunteers_state', 'volunteers_zip_code', 'volunteers_interests', 'volunteers_availability'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}