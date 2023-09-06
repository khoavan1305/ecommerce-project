<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CartRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'first_name'=>'required',
            'last_name' => 'required',
            'email' => 'required|email',
            'phone' => 'required|numeric',
            'address1' => 'required',
            'address2' => 'required',
            'pttt' => 'required',
            
        ];
    }
    public function messages(): array
    {
        return [
            'first_name.required'=>'Vui lòng nhập tên',
            'last_name.required'=>'Vui lòng nhập họ',
            'email.required'=>'Vui lòng nhập email',
            'email.email'=>'Vui lòng nhập email hợp lệ',
            'phone.required'=>'Vui lòng nhập SDT hợp lệ',
            'address1.required'=>'Vui lòng không bỏ trống',
            'address2.required'=>'Vui lòng không bỏ trống ',
            'pttt.required'=>'Vui lòng không bỏ trống ',
        ];
    }
}