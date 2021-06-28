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

.field public static final KEY_PREF_IS_LEGACY_MEDIA_DATA_COPY_COMPLETED:Ljava/lang/String; = "pref_legacy_media_data_copy_completed"

.field public static final KEY_PREF_IS_WIFI_AND_MOBILE_DATA_ACCEPTED:Ljava/lang/String; = "pref_wifi_and_mobile_data_accepted"

.field public static final KEY_PREF_PERSONAL_DATA_COLLECTION_CONSENT:Ljava/lang/String; = "pref_key_personal_data_collection_consent"

.field public static final KEY_PREF_PLAY_DATA_REPORT_TIME:Ljava/lang/String; = "pref_key_play_data_report_time"

.field public static final KEY_PREF_USER_DATA_REPORT_TIME:Ljava/lang/String; = "pref_key_user_data_report_time"

.field private static final SERVICE_SHARED_PREFS:Ljava/lang/String; = "service_process_prefs"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const/4 v0, 0x1

    .line 159
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    const-string v0, "service_process_prefs"

    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getUserDataReportTime(Landroid/content/Context;)J
    .locals 3

    const/4 v0, 0x1

    .line 86
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 87
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-string v2, "pref_key_user_data_report_time"

    .line 89
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v0
.end method

.method public static isClearAudioPlusEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 67
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 68
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "key_pref_clear_audio_enabled"

    .line 71
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isLegacyDataCopyCompleted(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 137
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 138
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "pref_legacy_media_data_copy_completed"

    .line 142
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static isPersonalDataCollectionConsented(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 47
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 48
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "pref_key_personal_data_collection_consent"

    .line 52
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static isWifiAndMobileDataAccepted(Landroid/content/Context;)Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;
    .locals 2

    const/4 v0, 0x1

    .line 106
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 107
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "pref_wifi_and_mobile_data_accepted"

    .line 109
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    sget-object p0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->NOT_SET:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    return-object p0

    :cond_0
    const-string v1, "pref_wifi_and_mobile_data_accepted"

    .line 116
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->ACCEPTED:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->DECLINED:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    :goto_0
    return-object p0

    .line 121
    :cond_2
    sget-object p0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->NOT_SET:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    return-object p0
.end method

.method public static setClearAudioPlusEnabled(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 77
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 78
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 80
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_pref_clear_audio_enabled"

    .line 81
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setLegacyDataCopyCompleted(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 149
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 150
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 152
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_legacy_media_data_copy_completed"

    .line 153
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setPersonalDataCollectionConsented(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 58
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 59
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 61
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_key_personal_data_collection_consent"

    .line 62
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setUserDataReportTime(Landroid/content/Context;J)V
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 96
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 98
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_key_user_data_report_time"

    .line 99
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setWifiAndMobileDataAccepted(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 126
    invoke-static {p0, v0}, Lcom/sonymobile/music/common/ProcessUtils;->validateCorrectProcessUsage(Landroid/content/Context;Z)V

    .line 127
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getServiceSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 129
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_wifi_and_mobile_data_accepted"

    .line 130
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
