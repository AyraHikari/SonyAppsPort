.class Lcom/sonyericsson/music/search/PlayFromSearchHelper$2;
.super Landroid/os/CountDownTimer;
.source "PlayFromSearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/search/PlayFromSearchHelper;->registerTrackPreparedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/PlayFromSearchHelper;JJ)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$2;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$2;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-static {v0}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$200(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$2;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-static {v0}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$100(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$2;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-static {v1}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$000(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$2;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$202(Lcom/sonyericsson/music/search/PlayFromSearchHelper;Z)Z

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
