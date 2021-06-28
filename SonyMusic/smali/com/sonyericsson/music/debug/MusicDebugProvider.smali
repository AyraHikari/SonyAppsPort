.class public Lcom/sonyericsson/music/debug/MusicDebugProvider;
.super Landroid/content/ContentProvider;
.source "MusicDebugProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/debug/MusicDebugProvider$ClientRunnable;
    }
.end annotation


# static fields
.field public static final DEBUG_DATA_PLATFORM_TIMER_EXTRA:Ljava/lang/String; = "DataPlatformTimer"

.field public static final DEBUG_GET_DATA_PLATFORM_TIMER_METHOD:Ljava/lang/String; = "data_platform_timer_get"

.field public static final DEBUG_PLAYLIST_SET_MEDIASTOREURI_TO_QUICKPLAY:Ljava/lang/String; = "set_quick_play_playlist_with_mediastoreuri"

.field public static final DEBUG_PLAYLIST_SET_MEDIASTOREURI_TO_QUICKPLAY_URI:Ljava/lang/String; = "playlistMediaStoreUri"

.field public static final DEBUG_SEARCH_PRIORITY_KEY_EXTRA:Ljava/lang/String; = "SearchPriority"

.field public static final DEBUG_SET_DATA_PLATFORM_TIMER_METHOD:Ljava/lang/String; = "data_platform_timer_set"

.field public static final DEBUG_SET_SHOW_SEARCH_PRIORITY:Ljava/lang/String; = "search_priority_set"

.field public static final DEBUG_SIMULATE_DRIVE_AUTH_TOKEN_FAILURE:Ljava/lang/String; = "simulate_drive_auth_token_failure"

.field public static final DEBUG_SIMULATE_DRIVE_AUTH_TOKEN_FAILURE_EXTRA:Ljava/lang/String; = "SimulateDriveAuthTokenFailureExtra"

.field public static final DEBUG_SIMULATE_DRIVE_AUTH_TOKEN_INVALID:Ljava/lang/String; = "simulate_drive_auth_token_invalid"

.field public static final DEBUG_SIMULATE_DRIVE_AUTH_TOKEN_INVALID_EXTRA:Ljava/lang/String; = "SimulateDriveAuthTokenInvalidExtra"

.field public static final DEBUG_SIMULATE_GET_DRIVE_AUTH_TOKEN_FAILURE:Ljava/lang/String; = "simulate_get_drive_auth_token_failure"

.field public static final DEBUG_SIMULATE_GET_DRIVE_AUTH_TOKEN_INVALID:Ljava/lang/String; = "simulate_get_drive_auth_token_invalid"

.field private static final sLOCK:Ljava/lang/Object;


# instance fields
.field private sDebugTimer:I

.field private sSimulateFailureToken:Z

.field private sSimulateInvalidToken:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/debug/MusicDebugProvider;->sLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/sonyericsson/music/debug/MusicDebugProvider;->sDebugTimer:I

    return-void
.end method

.method public static getUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://musicdebug"

    .line 66
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 71
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "data_platform_timer_get"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/sonyericsson/music/debug/MusicDebugProvider;->sLOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string p1, "DataPlatformTimer"

    .line 74
    iget p3, p0, Lcom/sonyericsson/music/debug/MusicDebugProvider;->sDebugTimer:I

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    monitor-exit v0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const-string v0, "data_platform_timer_set"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Lcom/sonyericsson/music/debug/MusicDebugProvider;->sLOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_1

    :try_start_1
    const-string p1, "DataPlatformTimer"

    .line 79
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/debug/MusicDebugProvider;->sDebugTimer:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lcom/sonyericsson/music/debug/MusicDebugProvider;->sDebugTimer:I

    .line 83
    :goto_0
    monitor-exit v0

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_2
    const-string v0, "set_quick_play_playlist_with_mediastoreuri"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_8

    const-string p1, "playlistMediaStoreUri"

    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 89
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 90
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 89
    invoke-static {p3, p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setQuickPlayPlaylistUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 91
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->USER_PLAYLIST:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 92
    invoke-virtual {p3}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSharedPrefsValue()Ljava/lang/String;

    move-result-object p3

    .line 91
    invoke-static {p1, p3}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setQuickPlayType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "search_priority_set"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_8

    const-string p1, "SearchPriority"

    .line 97
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 98
    new-instance p3, Lcom/sonyericsson/music/search/SearchDebugSettings;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/sonyericsson/music/search/SearchDebugSettings;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p3, p1}, Lcom/sonyericsson/music/search/SearchDebugSettings;->setShowPriority(Z)V

    goto :goto_1

    :cond_4
    const-string v0, "simulate_drive_auth_token_failure"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 103
    iput-boolean v1, p0, Lcom/sonyericsson/music/debug/MusicDebugProvider;->sSimulateFailureToken:Z

    if-eqz p3, :cond_8

    const-string p1, "SimulateDriveAuthTokenFailureExtra"

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/debug/MusicDebugProvider;->sSimulateFailureToken:Z

    goto :goto_1

    :cond_5
    const-string v0, "simulate_get_drive_auth_token_failure"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "SimulateDriveAuthTokenFailureExtra"

    .line 108
    iget-boolean p3, p0, Lcom/sonyericsson/music/debug/MusicDebugProvider;->sSimulateFailureToken:Z

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    const-string v0, "simulate_drive_auth_token_invalid"

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    iput-boolean v1, p0, Lcom/sonyericsson/music/debug/MusicDebugProvider;->sSimulateInvalidToken:Z

    if-eqz p3, :cond_8

    const-string p1, "SimulateDriveAuthTokenInvalidExtra"

    .line 112
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/debug/MusicDebugProvider;->sSimulateInvalidToken:Z

    goto :goto_1

    :cond_7
    const-string p3, "simulate_get_drive_auth_token_invalid"

    .line 114
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    const-string p1, "SimulateDriveAuthTokenInvalidExtra"

    .line 115
    iget-boolean p3, p0, Lcom/sonyericsson/music/debug/MusicDebugProvider;->sSimulateInvalidToken:Z

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    :goto_1
    return-object p2

    .line 117
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown method: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 141
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 131
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 136
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 126
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 146
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
