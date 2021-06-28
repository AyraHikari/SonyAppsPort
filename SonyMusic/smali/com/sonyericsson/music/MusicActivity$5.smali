.class Lcom/sonyericsson/music/MusicActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$5;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 506
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$5;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-boolean p1, p1, Lcom/sonyericsson/music/MusicActivity;->mPerformanceMeasurementReceiverRegistered:Z

    if-nez p1, :cond_0

    return-void

    .line 512
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sonyericsson.music.COLD_PLAYBACK_PERFORMANCE"

    .line 518
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method
