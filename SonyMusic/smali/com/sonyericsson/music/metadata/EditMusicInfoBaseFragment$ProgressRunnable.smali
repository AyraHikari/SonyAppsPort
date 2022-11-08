.class public Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;
.super Ljava/lang/Object;
.source "EditMusicInfoBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ProgressRunnable"
.end annotation


# instance fields
.field private mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 816
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/music/dialogs/LoadingDialog;->newInstance(Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    .line 817
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 818
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ProgressRunnable;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 820
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "loading"

    .line 821
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 822
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method
