.class public abstract Lcom/sonyericsson/music/library/LibraryBaseFragment;
.super Lcom/sonyericsson/music/library/BaseFragment;
.source "LibraryBaseFragment.java"


# instance fields
.field protected mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

.field protected mRootView:Landroid/view/View;

.field private final mServiceConnectionListener:Lcom/sonyericsson/music/MediaServiceConnection;

.field protected mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/sonyericsson/music/library/LibraryBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/LibraryBaseFragment$1;-><init>(Lcom/sonyericsson/music/library/LibraryBaseFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mServiceConnectionListener:Lcom/sonyericsson/music/MediaServiceConnection;

    return-void
.end method


# virtual methods
.method protected abstract getHeaderView()Landroid/view/View;
.end method

.method protected abstract getRootLayoutResource()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 114
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0002

    .line 115
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    .line 53
    iput-boolean p3, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->getRootLayoutResource()I

    move-result v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mRootView:Landroid/view/View;

    .line 56
    iget-object p1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mRootView:Landroid/view/View;

    invoke-static {v0}, Lcom/sonyericsson/music/common/UIUtils;->unbindDrawables(Landroid/view/View;)V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mViewDestroyed:Z

    return-void
.end method

.method protected onPlayerControllerConnected()V
    .locals 0

    return-void
.end method

.method protected onPlayerControllerDisconnected()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onStart()V

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 94
    instance-of v1, v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v1, :cond_0

    .line 95
    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mServiceConnectionListener:Lcom/sonyericsson/music/MediaServiceConnection;

    .line 96
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->addMusicServiceConnectedListener(Lcom/sonyericsson/music/MediaServiceConnection;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 102
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onStop()V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 104
    instance-of v1, v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mServiceConnectionListener:Lcom/sonyericsson/music/MediaServiceConnection;

    .line 106
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->removeMusicServiceConnectedListener(Lcom/sonyericsson/music/MediaServiceConnection;)V

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onPlayerControllerDisconnected()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/sonyericsson/music/library/LibraryBaseFragment;->mPlayerController:Lcom/sonyericsson/music/player/PlayerController;

    :cond_0
    return-void
.end method
