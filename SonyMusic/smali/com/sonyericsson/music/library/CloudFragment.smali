.class public abstract Lcom/sonyericsson/music/library/CloudFragment;
.super Lcom/sonyericsson/music/library/BaseFragment;
.source "CloudFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;
.implements Lcom/sonymobile/music/common/NetworkStatusReceiver$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/library/BaseFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;",
        "Lcom/sonymobile/music/common/NetworkStatusReceiver$ConnectivityListener;"
    }
.end annotation


# static fields
.field private static final BUNDLE_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_IS_INITIAL_SYNC_DONE:Ljava/lang/String; = "key_is_initial_sync_done"

.field private static final LOADER_ID_GET_ACCOUNT:I = 0x1

.field private static final LOADER_ID_GET_FILES:I = 0x2

.field private static final LOADER_ID_GET_PREFERRED_DOWNLOAD_CONNECTION:I = 0x3

.field private static final PARENTS_RETAIN_KEY:Ljava/lang/String; = "retained_parents"


# instance fields
.field mAccountName:Ljava/lang/String;

.field private mAdapter:Lcom/sonyericsson/music/library/CloudAdapter;

.field mDbAccountId:I

.field private mEmptyText:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mInfoText1:Landroid/widget/TextView;

.field private mInfoText2:Landroid/widget/TextView;

.field private mIsInitialSyncDone:Z

.field private mNetworkStatusReceiver:Lcom/sonymobile/music/common/NetworkStatusReceiver;

.field private mNoNetworkBanner:Landroid/widget/TextView;

.field private mNotConnectedLayout:Landroid/view/View;

.field private mParents:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferredDownloadConnectionSetting:I

.field private mProgressBar:Landroid/view/View;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRetryButton:Landroid/widget/Button;

.field final mServiceId:I

.field private mShowNoWifiToast:Landroid/widget/Toast;

.field private mSwipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mIsInitialSyncDone:Z

    .line 105
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNetworkStatusReceiver:Lcom/sonymobile/music/common/NetworkStatusReceiver;

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mPreferredDownloadConnectionSetting:I

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mHandler:Landroid/os/Handler;

    .line 126
    iput p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mServiceId:I

    return-void
.end method

.method private destroySettingsLoader()V
    .locals 2

    .line 527
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method private handleAccountState(Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;)V
    .locals 7

    .line 585
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mSwipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->getSyncState()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 587
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->getLastSyncDate()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 589
    :goto_1
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->getState()I

    move-result v1

    const v4, 0x7f1000b8

    const/16 v5, 0x8

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 613
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mSwipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 616
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "connected"

    invoke-static {v1, v2}, Lcom/sonyericsson/music/metadata/cloud/DriveAnalytics;->updateConnectionState(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 620
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->getSyncState()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 621
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mSwipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 622
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNotConnectedLayout:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mInfoText2:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mProgressBar:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mInfoText1:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 626
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 627
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mRetryButton:Landroid/widget/Button;

    new-instance v0, Lcom/sonyericsson/music/library/CloudFragment$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/CloudFragment$5;-><init>(Lcom/sonyericsson/music/library/CloudFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 637
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mSwipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 638
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 639
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNotConnectedLayout:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mInfoText1:Landroid/widget/TextView;

    const v0, 0x7f1000b2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 641
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mInfoText2:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mProgressBar:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 644
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNotConnectedLayout:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mSwipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 646
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/CloudFragment;->startFilesLoader()V

    goto :goto_2

    .line 608
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/sonyericsson/music/library/CloudFragment;->handleAuthorizeFailed(I)V

    goto :goto_2

    .line 600
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mSwipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 601
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNotConnectedLayout:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mSwipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 603
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/CloudFragment;->authorizeAccount()V

    goto :goto_2

    .line 591
    :pswitch_3
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "eng"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "userdebug"

    .line 592
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 593
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "We have an account with STATE_NOT_FOUND. We shouldn\'t start the fragment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showDownloadUnavailableToastIfApplicable()V
    .locals 3

    .line 544
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 546
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 547
    iget v1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mPreferredDownloadConnectionSetting:I

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->isDownloadAllowed(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mShowNoWifiToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    const v1, 0x7f10007e

    .line 549
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/MusicToast;->create(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mShowNoWifiToast:Landroid/widget/Toast;

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mShowNoWifiToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mShowNoWifiToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private startSettingsLoader()V
    .locals 3

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private updateNoNetworkBanner(Z)V
    .locals 2

    .line 560
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/UIUtils;->isUseDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNoNetworkBanner:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNoNetworkBanner:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNoNetworkBanner:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method abstract authorizeAccount()V
.end method

.method abstract backgroundExitBecauseOfMissingAccount(Landroid/content/Context;)V
.end method

.method destroyAccountLoader()V
    .locals 2

    .line 513
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method exit()V
    .locals 3

    .line 531
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 532
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sonyericsson/music/library/CloudFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/library/CloudFragment$3;-><init>(Lcom/sonyericsson/music/library/CloudFragment;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 537
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 539
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/MusicFragmentManager;->popBackStack(Landroid/app/Activity;)V

    return-void
.end method

.method abstract getMimeTypeFolder()Ljava/lang/String;
.end method

.method abstract getRootFolder()Ljava/lang/String;
.end method

.method handleAuthorizeFailed(I)V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mSwipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mSwipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mInfoText1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 572
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mInfoText2:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 574
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNotConnectedLayout:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mRetryButton:Landroid/widget/Button;

    new-instance v0, Lcom/sonyericsson/music/library/CloudFragment$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/CloudFragment$4;-><init>(Lcom/sonyericsson/music/library/CloudFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)Z
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/CloudFragment;->getRootFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "parent"

    .line 494
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    const/4 p1, 0x1

    return p1

    .line 489
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)Z

    move-result p1

    return p1
.end method

.method public onClick(Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;II)V
    .locals 4

    .line 408
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/CloudFragment;->getMimeTypeFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "parent"

    .line 410
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto/16 :goto_1

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 416
    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 423
    iget v1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mDbAccountId:I

    invoke-static {v1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getAccountParentFilesUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sub-int p2, p3, p2

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 426
    :cond_3
    iget p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mDbAccountId:I

    const-string v0, "parent_none"

    invoke-static {p2, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getAccountParentFilesUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move p2, p3

    .line 431
    :goto_0
    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mAdapter:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/music/library/CloudAdapter;->isDownloaded(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 432
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f100246

    invoke-static {p1, p2, v3}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    return-void

    .line 434
    :cond_4
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->isStreamingAllowed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mAdapter:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/music/library/CloudAdapter;->isDownloaded(I)Z

    move-result p3

    if-nez p3, :cond_5

    const p2, 0x7f100234

    .line 436
    invoke-static {p1, p2, v3}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    return-void

    .line 442
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    const-string v0, "mime_type"

    .line 443
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/CloudFragment;->getMimeTypeFolder()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {p3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 443
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    .line 445
    new-instance v0, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    .line 446
    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    .line 447
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    .line 448
    invoke-virtual {p1, p3, v0}, Lcom/sonyericsson/music/MusicActivity;->openAndPlayContent(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    if-eqz p1, :cond_0

    .line 142
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object v0

    const-string v1, "retained_parents"

    .line 143
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/RetainManager;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    const-string v0, "key_is_initial_sync_done"

    .line 144
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mIsInitialSyncDone:Z

    .line 146
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    if-nez p1, :cond_0

    .line 147
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    return-object v1

    .line 305
    :pswitch_0
    new-instance v1, Lcom/sonyericsson/music/settings/GoogleDriveSettingsLoader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/settings/GoogleDriveSettingsLoader;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_1
    if-eqz v1, :cond_0

    const-string v2, "parent"

    .line 290
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "parent"

    .line 291
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    iget-object v2, v0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v2, Landroidx/loader/content/CursorLoader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v3, v0, Lcom/sonyericsson/music/library/CloudFragment;->mDbAccountId:I

    .line 294
    invoke-static {v3, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getAccountParentFilesUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mime_type = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/library/CloudFragment;->getMimeTypeFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' DESC, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "file_name COLLATE NOCASE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 299
    :cond_0
    new-instance v1, Landroidx/loader/content/CursorLoader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, "account_id = ? AND mime_type != ? "

    const/4 v2, 0x2

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, v0, Lcom/sonyericsson/music/library/CloudFragment;->mDbAccountId:I

    .line 301
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/library/CloudFragment;->getMimeTypeFolder()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    const-string v16, "file_name COLLATE NOCASE"

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 286
    :pswitch_2
    new-instance v1, Lcom/sonyericsson/music/library/CloudAccountLoader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/music/library/CloudAccountLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0006

    .line 236
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 237
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    const v1, 0x7f0c0024

    .line 188
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901a3

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f090167

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNotConnectedLayout:Landroid/view/View;

    const p2, 0x7f0900ae

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mEmptyText:Landroid/view/View;

    const p2, 0x7f0901a6

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mRetryButton:Landroid/widget/Button;

    const p2, 0x7f090196

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mProgressBar:Landroid/view/View;

    const p2, 0x7f0900e5

    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mInfoText1:Landroid/widget/TextView;

    const p2, 0x7f0900e6

    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mInfoText2:Landroid/widget/TextView;

    const p2, 0x7f0901ee

    .line 196
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mSwipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const p2, 0x7f090164

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNoNetworkBanner:Landroid/widget/TextView;

    .line 199
    iget-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v1, p3, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 201
    iget-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/sonyericsson/music/ui/LibraryDividerItemDecoration;

    invoke-direct {v0, p3, v2}, Lcom/sonyericsson/music/ui/LibraryDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 203
    iget-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mSwipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/sonyericsson/music/library/CloudFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/CloudFragment$1;-><init>(Lcom/sonyericsson/music/library/CloudFragment;)V

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 214
    new-instance p2, Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/CloudFragment;->getMimeTypeFolder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0, p3}, Lcom/sonyericsson/music/library/CloudAdapter;-><init>(Lcom/sonyericsson/music/library/CloudAdapter$CloudListener;Ljava/lang/String;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mAdapter:Lcom/sonyericsson/music/library/CloudAdapter;

    .line 215
    iget-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mAdapter:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 216
    iget-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/sonyericsson/music/library/CloudFragment;->mAdapter:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 178
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadClick(Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;)V
    .locals 2

    .line 455
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 457
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->requestPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 462
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getDownloadState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 474
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getAccountId()I

    move-result p1

    .line 474
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/music/metadata/cloud/DownloadService;->cancel(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 464
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100246

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getAccountId()I

    move-result p1

    .line 467
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/music/metadata/cloud/DownloadService;->download(Landroid/content/Context;Ljava/lang/String;I)V

    .line 469
    invoke-direct {p0}, Lcom/sonyericsson/music/library/CloudFragment;->showDownloadUnavailableToastIfApplicable()V

    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudFile;->getAccountId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/sonyericsson/music/dialogs/CloudRetryDownloadDialog;->newInstance(Ljava/lang/String;I)Landroidx/fragment/app/DialogFragment;

    move-result-object p1

    .line 480
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "cloud_retry_download"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 314
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p2, :cond_1

    .line 361
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "download_connection"

    .line 363
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mPreferredDownloadConnectionSetting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_0

    .line 368
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_0
    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_6

    .line 368
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 348
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mAdapter:Lcom/sonyericsson/music/library/CloudAdapter;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/library/CloudAdapter;->swapData(Landroid/database/Cursor;)V

    if-eqz p2, :cond_2

    .line 349
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v0, 0x0

    .line 350
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p2, 0x8

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mEmptyText:Landroid/view/View;

    if-eqz v0, :cond_4

    const/4 p2, 0x0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_6

    .line 352
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 353
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    .line 354
    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mDbAccountId:I

    iget v1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mServiceId:I

    .line 353
    invoke-static {p1, p2, v0, v1}, Lcom/sonyericsson/music/metadata/cloud/GetMetadataTask;->start(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_2

    :pswitch_2
    if-eqz p2, :cond_5

    .line 316
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 317
    new-instance p1, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;-><init>(Landroid/database/Cursor;)V

    .line 318
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->getAccountName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mAccountName:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->getId()I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mDbAccountId:I

    .line 321
    iget p2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mDbAccountId:I

    if-lez p2, :cond_6

    .line 322
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p2

    .line 324
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/CloudFragment;->handleAccountState(Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;)V

    .line 326
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;->getState()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    iget-boolean p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mIsInitialSyncDone:Z

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    .line 329
    iget p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mDbAccountId:I

    iget v2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mServiceId:I

    invoke-static {p2, p1, v2, v1}, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->start(Lcom/sonyericsson/music/MusicActivity;IIZ)V

    .line 330
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mIsInitialSyncDone:Z

    goto :goto_2

    .line 337
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/music/library/CloudFragment$2;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/library/CloudFragment$2;-><init>(Lcom/sonyericsson/music/library/CloudFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 375
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 377
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/CloudFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 383
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mAdapter:Lcom/sonyericsson/music/library/CloudAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/library/CloudAdapter;->swapData(Landroid/database/Cursor;)V

    :goto_0
    return-void
.end method

.method public onNetworkAvailabilityChanged(ZI)V
    .locals 1

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 224
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    .line 225
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/library/CloudFragment;->updateNoNetworkBanner(Z)V

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/cloud/DownloadService;->startPendingDownloads(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09010b

    if-eq v0, v1, :cond_0

    .line 278
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 259
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 260
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/MusicActivity;->requestPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 264
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f100246

    invoke-static {p1, v1, v0}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    goto :goto_1

    .line 267
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 268
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/music/library/CloudFragment;->mDbAccountId:I

    .line 270
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/CloudFragment;->getMimeTypeFolder()Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-static {v1, p1, v2, v3}, Lcom/sonyericsson/music/metadata/cloud/DownloadService;->downloadFilesInParent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/music/library/CloudFragment;->showDownloadUnavailableToastIfApplicable()V

    :cond_5
    :goto_1
    return v0
.end method

.method public onPause()V
    .locals 1

    .line 167
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNetworkStatusReceiver:Lcom/sonymobile/music/common/NetworkStatusReceiver;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/sonymobile/music/common/NetworkStatusReceiver;->stop()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNetworkStatusReceiver:Lcom/sonymobile/music/common/NetworkStatusReceiver;

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/CloudFragment;->destroyAccountLoader()V

    .line 173
    invoke-direct {p0}, Lcom/sonyericsson/music/library/CloudFragment;->destroySettingsLoader()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const v0, 0x7f09010b

    .line 242
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mAdapter:Lcom/sonyericsson/music/library/CloudAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1}, Lcom/sonyericsson/music/library/CloudAdapter;->getNbrOfNotDownloadedFiles()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    .line 244
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 243
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090117

    .line 246
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 251
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 154
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNetworkStatusReceiver:Lcom/sonymobile/music/common/NetworkStatusReceiver;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/sonymobile/music/common/NetworkStatusReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sonymobile/music/common/NetworkStatusReceiver;-><init>(Landroid/content/Context;Lcom/sonymobile/music/common/NetworkStatusReceiver$ConnectivityListener;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNetworkStatusReceiver:Lcom/sonymobile/music/common/NetworkStatusReceiver;

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment;->mNetworkStatusReceiver:Lcom/sonymobile/music/common/NetworkStatusReceiver;

    invoke-virtual {v0}, Lcom/sonymobile/music/common/NetworkStatusReceiver;->start()V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/CloudFragment;->startAccountLoader()V

    .line 162
    invoke-direct {p0}, Lcom/sonyericsson/music/library/CloudFragment;->startSettingsLoader()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 397
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_is_initial_sync_done"

    .line 399
    iget-boolean v1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mIsInitialSyncDone:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 402
    invoke-static {}, Lcom/sonyericsson/music/RetainManager;->getInstance()Lcom/sonyericsson/music/RetainManager;

    move-result-object p1

    const-string v0, "retained_parents"

    .line 403
    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudFragment;->mParents:Ljava/util/Stack;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/RetainManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method startAccountLoader()V
    .locals 3

    .line 509
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method startFilesLoader()V
    .locals 3

    .line 517
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "parent"

    .line 518
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/CloudFragment;->getRootFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method
