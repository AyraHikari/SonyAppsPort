.class public final Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;
.super Ljava/lang/Object;
.source "ServiceProcessPreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;
    }
.end annotation


# static fields
.field private static final KEY_PREF_CLEAR_AUDIO_ENABLED:Ljava/lang/String; = "key_pref_clear_audio_enabled"

.field public static final KEY_PREF_CLEAR_HIGH_RES_MEDIA_TABLE:Ljava/lang/String; = "key_pref_clear_high_res_media_table"

.field public static final KEY_PREF_IS_LEGACY_MEDIA_DATA_COPY_COMPLETED:Ljava/lang/String; = "pref_legacy_media_data_copy_completed"

.field public static final KEY_PREF_IS_WIFI_AND_MOBILE_DATA_ACCEPTED:Ljava/lang/String; = "pref_wifi_and_mobile_data_accepted"

.field private static final KEY_PREF_MEDIA_STORE_GENERATION_CODE:Ljava/lang/String; = "pref_media_store_generation_code"

.field private static final KEY_PREF_MEDIA_STORE_VERSION_CODE:Ljava/lang/String; = "pref_media_store_version_code"

.field public static final KEY_PREF_PERSONAL_DATA_COLLECTION_CONSENT:Ljava/lang/String; = "pref_key_personal_data_collection_consent"

.field public static final KEY_PREF_PLAY_DATA_REPORT_TIME:Ljava/lang/String; = "pref_key_play_data_report_time"

.field private static final KEY_PREF_SHOW_SYNC_USER_NOTICE_DIALOG:Ljava/lang/String; = "pref_show_sync_user_notice_dialog"

.field public static final KEY_PREF_USER_DATA_REPORT_TIME:Ljava/lang/String; = "pref_key_user_data_report_time"

.field private static final SERVICE_SHARED_PREFS:Ljava/lang/String; = "service_process_prefs"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGenerationCode(Landroid/content/Context;)J
    .locals 3

    const/4 v0, 0x1

    .line 214
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 215
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "pref_media_store_generation_code"

    .line 217
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v0
.end method

.method public static getMediaVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 195
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 196
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "pref_media_store_version_code"

    .line 198
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const/4 v0, 0x1

    .line 234
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    const-string v0, "service_process_prefs"

    const/4 v1, 0x0

    .line 236
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getUserDataReportTime(Landroid/content/Context;)J
    .locals 3

    const/4 v0, 0x1

    .line 100
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 101
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "pref_key_user_data_report_time"

    .line 103
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v0
.end method

.method public static isClearAudioPlusEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 81
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 82
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "key_pref_clear_audio_enabled"

    .line 85
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isClearHighResMediaTable(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 249
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 250
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "key_pref_clear_high_res_media_table"

    .line 253
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isLegacyDataCopyCompleted(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 151
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 152
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "pref_legacy_media_data_copy_completed"

    .line 156
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static isPersonalDataCollectionConsented(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 61
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 62
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "pref_key_personal_data_collection_consent"

    .line 66
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static isWifiAndMobileDataAccepted(Landroid/content/Context;)Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;
    .locals 2

    const/4 v0, 0x1

    .line 120
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 121
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "pref_wifi_and_mobile_data_accepted"

    .line 123
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    sget-object p0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->NOT_SET:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    return-object p0

    :cond_0
    const-string v1, "pref_wifi_and_mobile_data_accepted"

    .line 130
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 131
    sget-object p0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->ACCEPTED:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->DECLINED:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    :goto_0
    return-object p0

    .line 135
    :cond_2
    sget-object p0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->NOT_SET:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    return-object p0
.end method

.method public static setClearAudioPlusEnabled(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 92
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_pref_clear_audio_enabled"

    .line 95
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setClearHighResMediaTable(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 240
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 241
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 243
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_pref_clear_high_res_media_table"

    .line 244
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setGenerationCode(Landroid/content/Context;J)V
    .locals 1

    const/4 v0, 0x1

    .line 223
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 224
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 226
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_media_store_generation_code"

    .line 227
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setLegacyDataCopyCompleted(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 163
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 164
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 166
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_legacy_media_data_copy_completed"

    .line 167
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setMediaVersionCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 204
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 205
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 207
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_media_store_version_code"

    .line 208
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setPersonalDataCollectionConsented(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 73
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 75
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_key_personal_data_collection_consent"

    .line 76
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setShowSyncUserNoticeDialog(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 184
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 185
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 187
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_show_sync_user_notice_dialog"

    .line 188
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setUserDataReportTime(Landroid/content/Context;J)V
    .locals 1

    const/4 v0, 0x1

    .line 109
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 110
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 112
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_key_user_data_report_time"

    .line 113
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setWifiAndMobileDataAccepted(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 140
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 141
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 143
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_wifi_and_mobile_data_accepted"

    .line 144
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static shouldShowSyncUserNoticeDialog(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 173
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 174
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "pref_show_sync_user_notice_dialog"

    .line 178
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method
