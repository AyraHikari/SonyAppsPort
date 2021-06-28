.class Lcom/sonyericsson/music/search/PlayFromSearchHelper$3;
.super Ljava/lang/Object;
.source "PlayFromSearchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/search/PlayFromSearchHelper;->showNotFoundDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

.field final synthetic val$activity:Lcom/sonyericsson/music/MusicActivity;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/PlayFromSearchHelper;Lcom/sonyericsson/music/MusicActivity;Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$3;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    iput-object p2, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$3;->val$activity:Lcom/sonyericsson/music/MusicActivity;

    iput-object p3, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$3;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$3;->val$activity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$3;->val$query:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/music/search/PlayFromSearchHelper$VoiceSearchNotFoundDialog;->newInstance(Ljava/lang/String;)Lcom/sonyericsson/music/search/PlayFromSearchHelper$VoiceSearchNotFoundDialog;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/music/search/PlayFromSearchHelper$3;->this$0:Lcom/sonyericsson/music/search/PlayFromSearchHelper;

    invoke-static {v1}, Lcom/sonyericsson/music/search/PlayFromSearchHelper;->access$100(Lcom/sonyericsson/music/search/PlayFromSearchHelper;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "voice_search_not_found_dialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
