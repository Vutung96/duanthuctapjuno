<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EditAttributeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
            'ten_tt'=>'unique:attributes,att_name,'.$this->segment(4).',att_id',
            'gt_moi'=>'unique:attribute_values,att_value',
            //'name_id'=>'unique:attribute_values,att_value'
        ];
    }
    public function messages(){
        return [
            //
            'ten_tt.unique'=>'Tên thuộc tính đã bị trùng',
            'gt_moi.unique'=>'Tên giá trị thuộc tính bị trùng',
            //'name_id.unique'=>'Tên giá trị thuộc tính bị trùng'
        ];
    }
}
