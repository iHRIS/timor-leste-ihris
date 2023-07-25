"use strict";(self["webpackChunkiHRIS_v5"]=self["webpackChunkiHRIS_v5"]||[]).push([[21],{8917:function(s,e,t){t.r(e),t.d(e,{default:function(){return P}});var a=function(){var s=this,e=s.$createElement,t=s._self._c||e;return t("v-row",{staticStyle:{height:"80vh"},attrs:{align:"center",justify:"center"}},[t("v-col",[t("v-row",{attrs:{align:"center",justify:"center"}},[t("v-card",{staticClass:"py-8 px-4",attrs:{"min-width":"500px"}},[t("v-card-title",{staticClass:"justify-center"},[t("v-img",{attrs:{src:"/images/iHRIS5LogoBig.png",align:"center",contain:"",justify:"center","max-height":"132","max-width":"150"}})],1),t("v-card-text",{attrs:{align:"center",justify:"center"}},[t("h2",{staticClass:"text--primary font-weight-medium pt-3 pb-6"},[s._v(" Change your password!"),t("br")]),t("v-form",{ref:"resetPasswordForm",staticClass:"elevation-0",attrs:{"lazy-validation":""}},[t("v-text-field",{attrs:{label:"New Password",outlined:"",dense:"","append-icon":s.show_pass?"mdi-eye":"mdi-eye-off",type:s.show_pass?"text":"password","prepend-icon":"mdi-form-textbox-password"},on:{"click:append":function(e){s.show_pass=!s.show_pass}},model:{value:s.newPassword,callback:function(e){s.newPassword=e},expression:"newPassword"}}),t("v-text-field",{attrs:{label:"Confirm Password",outlined:"",dense:"","append-icon":s.show_pass?"mdi-eye":"mdi-eye-off",type:s.show_pass?"text":"password","prepend-icon":"mdi-form-textbox-password"},on:{"click:append":function(e){s.show_pass=!s.show_pass}},model:{value:s.confirmPassword,callback:function(e){s.confirmPassword=e},expression:"confirmPassword"}})],1)],1),t("v-card-actions",[t("v-snackbar",{staticClass:"align-content-lg-space-between",attrs:{absolute:s.absolute,color:"secondary"},scopedSlots:s._u([{key:"action",fn:function(e){var a=e.attrs;return[t("v-btn",s._b({attrs:{color:"warning",text:""},on:{click:function(e){s.snackbar=!1}}},"v-btn",a,!1),[s._v("Close")])]}}]),model:{value:s.snackbar,callback:function(e){s.snackbar=e},expression:"snackbar"}},[s._v(" "+s._s(s.message)+" ")]),t("v-spacer"),t("v-btn",{staticClass:"mx-2",attrs:{color:"primary",loading:s.loggingin,disabled:s.loggingin},on:{click:s.submit}},[s._v("Save")])],1)],1)],1)],1)],1)},n=[],i={name:"change-password",data:function(){return{show_pass:!1,loggingin:!1,message:"",snackbar:!1,newPassword:"",confirmPassword:"",absolute:!0}},methods:{submit:function(){let s=/^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,32}$/;if(""===this.newPassword||""===this.confirmPassword)this.message="All Fields are required!",this.snackbar=!0,this.signingin=!1;else if(this.newPassword!==this.confirmPassword)this.message="Passwords do not match!",this.snackbar=!0,this.signingin=!1;else if(this.newPassword.match(s)){this.loggingin=!0;let s=new URLSearchParams;s.append("newPassword",this.newPassword),s.append("confirmPassword",this.confirmPassword);const e=this.$route.query.token,t=this.$route.query.userId;console.log("userId",t),fetch("auth/change-password?token="+e+"&userId="+t,{method:"POST",body:s}).then((s=>s.json())).then((s=>{this.loggingin=!1,s.ok?(this.message=s.message,this.snackbar=!0,setTimeout((()=>{this.$router.push("/")}),800)):(this.message=s.message,this.snackbar=!0)})).catch((s=>{this.loggingin=!1,this.message=s,this.snackbar=!0}))}else this.message="Password must be at least 8 characters long, contain at least one number, one uppercase letter, one lowercase letter, and one special character!",this.snackbar=!0,this.signingin=!1}}},r=i,o=t(3736),c=t(3453),l=t.n(c),d=t(3150),h=t(2371),w=t(7118),p=t(2102),u=t(6232),g=t(7047),m=t(2877),f=t(3202),b=t(9762),v=t(5978),k=(0,o.Z)(r,a,n,!1,null,null,null),P=k.exports;l()(k,{VBtn:d.Z,VCard:h.Z,VCardActions:w.h7,VCardText:w.ZB,VCardTitle:w.EB,VCol:p.Z,VForm:u.Z,VImg:g.Z,VRow:m.Z,VSnackbar:f.Z,VSpacer:b.Z,VTextField:v.Z})}}]);
//# sourceMappingURL=change-password.7b963db3.js.map