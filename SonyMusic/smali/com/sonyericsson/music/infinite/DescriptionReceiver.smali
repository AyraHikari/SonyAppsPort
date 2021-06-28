.class public Lcom/sonyericsson/music/infinite/DescriptionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DescriptionReceiver.java"


# static fields
.field static final EXTRA_ACTIVITY_UPDATE_TIME:Ljava/lang/String; = "com.sonyericsson.media.infinite.EXTRA_ACTIVITY_UPDATE_TIME"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private saveExtras(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/sonyericsson/music/infinite/DescriptionReceiver$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/infinite/DescriptionReceiver$1;-><init>(Lcom/sonyericsson/music/infinite/DescriptionReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onDescriptionReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.media.infinite.ACTION_GET_DETAILS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.sonyericsson.media.infinite.EXTRA_DESCRIPTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.media.infinite.EXTRA_ACTIVITY_NAME"

    .line 35
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sonyericsson.media.infinite.EXTRA_ACTIVITY_UPDATE_TIME"

    const-wide/16 v3, 0x0

    .line 36
    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v1

    .line 38
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/infinite/DescriptionReceiver;->saveExtras(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/music/infinite/DescriptionReceiver;->onDescriptionReceived(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
