.class Lcom/sonyericsson/music/MiniPlayerFragment$4;
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

    .line 224
    iput-object p1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$4;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/music/MiniPlayerFragment$4;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/MiniPlayerFragment;->access$1400(Lcom/sonyericsson/music/MiniPlayerFragment;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 230
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 231
    new-instance v1, Lcom/sonyericsson/music/MiniPlayerFragment$4$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/MiniPlayerFragment$4$1;-><init>(Lcom/sonyericsson/music/MiniPlayerFragment$4;Landroid/view/View;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 239
    invoke-static {}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->newInstance()Lcom/sonyericsson/music/dialogs/SleepTimerDialog;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/sonyericsson/music/MiniPlayerFragment$4;->this$0:Lcom/sonyericsson/music/MiniPlayerFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/dialogs/SleepTimerDialog;->setSleepTimerController(Lcom/sonyericsson/music/dialogs/SleepTimerDialog$SleepTimerController;)V

    const-string v1, "sleeptimer_dialog"

    .line 241
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
