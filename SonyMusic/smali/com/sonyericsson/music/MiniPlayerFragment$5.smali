.class Lcom/sonyericsson/music/MiniPlayerFragment$5;
.super Ljava/lang/Object;
.source "MiniPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/MiniPlayerFragment;->setUpMiniPlayerView(Landroid/content/res/Resources;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MiniPlayerFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MiniPlayerFragment;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$5;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 252
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$5;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1500(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 254
    sget-object v0, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->OFF:Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;

    .line 255
    invoke-virtual {v0}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerOption;->getSharedPrefsValue()J

    move-result-wide v0

    .line 254
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setSleepTimerValue(Landroid/content/Context;J)V

    .line 256
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$5;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->hideTimerBanner()V

    .line 257
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$5;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->cancelTimer()V

    .line 258
    iget-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$5;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$600(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/player/PlayerController;->pauseDelayed(J)V

    :cond_0
    return-void
.end method
