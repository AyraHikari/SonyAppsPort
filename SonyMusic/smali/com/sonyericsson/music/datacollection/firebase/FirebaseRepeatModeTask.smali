.class public Lcom/sonyericsson/music/datacollection/firebase/FirebaseRepeatModeTask;
.super Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;
.source "FirebaseRepeatModeTask.java"


# static fields
.field private static final REPEAT_MODE_ALL:Ljava/lang/String; = "all"

.field private static final REPEAT_MODE_OFF:Ljava/lang/String; = "off"

.field private static final REPEAT_MODE_ONE:Ljava/lang/String; = "one"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getPropertyValue()Ljava/lang/String;
    .locals 4

    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRepeatModeTask;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 48
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown repeat mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v0, "one"

    return-object v0

    :pswitch_1
    const-string v0, "all"

    return-object v0

    :pswitch_2
    const-string v0, "off"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRepeatMode()I
    .locals 8

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;->mAppContext:Landroid/content/Context;

    .line 54
    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal$LastPlayed;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "repeat_mode"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 53
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 58
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "repeat_mode"

    .line 59
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_1
    throw v0

    :cond_2
    if-eqz v1, :cond_3

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0
.end method


# virtual methods
.method public permissionsGranted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseUserPropertiesTask;->mAppContext:Landroid/content/Context;

    const-string v1, "music_repeatMode"

    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseRepeatModeTask;->getPropertyValue()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->setUserProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
