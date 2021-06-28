.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$1;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$1;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 236
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$1;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$000(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    new-instance v0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$1;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    iget-object v1, v1, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->mQuickPlayType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;-><init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/QuickPlayUtils$Type;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 239
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
