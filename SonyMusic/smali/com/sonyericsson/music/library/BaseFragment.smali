.class public Lcom/sonyericsson/music/library/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;
.implements Lcom/sonyericsson/music/ui/MusicLayout$OnInsetsListener;
.implements Lcom/sonyericsson/music/ToolbarControl$OnToolbarHeightListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/BaseFragment$MatcherData;,
        Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;
    }
.end annotation


# static fields
.field public static final KEY_CACHED_BACKGROUND_COLOR:Ljava/lang/String; = "key_cached_background_color"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mStatusBarHeight:I

.field private mToolbarHeight:I

.field protected mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/BaseFragment;->mUriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/library/BaseFragment;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/library/BaseFragment;->applyTopPadding(II)V

    return-void
.end method

.method private applyTopPadding(II)V
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->isContentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/BaseFragment;->onApplyTopPadding(II)I

    move-result p1

    .line 329
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getContainerId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 332
    invoke-static {p2, p1}, Lcom/sonyericsson/music/library/BaseFragment;->setPaddingTop(Landroid/view/View;I)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/BaseFragment;->onApplyTopPadding(II)I

    :cond_1
    :goto_0
    return-void
.end method

.method private applyTopPaddingPreDraw(II)V
    .locals 2

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/library/BaseFragment$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/music/library/BaseFragment$1;-><init>(Lcom/sonyericsson/music/library/BaseFragment;II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private calculateInitialTopPadding()V
    .locals 2

    .line 307
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl;->getToolbarHeight()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/BaseFragment;->mToolbarHeight:I

    .line 308
    invoke-static {}, Lcom/sonyericsson/music/common/UIUtils;->getStatusBarHeight()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/library/BaseFragment;->mStatusBarHeight:I

    .line 309
    iget v0, p0, Lcom/sonyericsson/music/library/BaseFragment;->mStatusBarHeight:I

    iget v1, p0, Lcom/sonyericsson/music/library/BaseFragment;->mToolbarHeight:I

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/library/BaseFragment;->applyTopPadding(II)V

    return-void
.end method

.method private getMusicLayout()Lcom/sonyericsson/music/ui/MusicLayout;
    .locals 2

    .line 266
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/ui/MusicLayout;

    return-object v0
.end method

.method private isMusicActivity()Z
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerForToolbarHeight()V
    .locals 1

    .line 291
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/ToolbarControl;->addOnToolbarHeightListener(Lcom/sonyericsson/music/ToolbarControl$OnToolbarHeightListener;)V

    return-void
.end method

.method private registerForWindowInsets()V
    .locals 1

    .line 275
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicLayout()Lcom/sonyericsson/music/ui/MusicLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/ui/MusicLayout;->addOnInsetsListener(Lcom/sonyericsson/music/ui/MusicLayout$OnInsetsListener;)V

    return-void
.end method

.method private setBgColor()V
    .locals 4

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 244
    instance-of v1, v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v1, :cond_0

    .line 245
    move-object v1, v0

    check-cast v1, Lcom/sonyericsson/music/MusicActivity;

    .line 247
    sget-object v2, Lcom/sonyericsson/music/library/BaseFragment$2;->$SwitchMap$com$sonyericsson$music$library$BaseFragment$BackgroundColorSetting:[I

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getBackgroundColorSetting()Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 258
    invoke-static {v0}, Lcom/sonyericsson/music/common/ThemeColor;->window(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 253
    :pswitch_0
    invoke-static {v0}, Lcom/sonyericsson/music/common/ThemeColor;->primaryLight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    .line 261
    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/MusicActivity;->setBackgroundColor(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static setPaddingTop(Landroid/view/View;I)V
    .locals 3

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private setupSystemUI()V
    .locals 2

    .line 432
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getSystemUIConfig()Lcom/sonyericsson/music/library/SystemUIConfig;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 434
    invoke-static {v1, v0}, Lcom/sonyericsson/music/library/SystemUIConfig;->applySystemUiConfig(Landroid/app/Activity;Lcom/sonyericsson/music/library/SystemUIConfig;)V

    return-void
.end method

.method private unregisterForToolbarHeight()V
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/ToolbarControl;->removeOnToolbarHeightListener(Lcom/sonyericsson/music/ToolbarControl$OnToolbarHeightListener;)V

    return-void
.end method

.method private unregisterForWindowInsets()V
    .locals 1

    .line 279
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicLayout()Lcom/sonyericsson/music/ui/MusicLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/ui/MusicLayout;->removeOnInsetsListener(Lcom/sonyericsson/music/ui/MusicLayout$OnInsetsListener;)V

    return-void
.end method


# virtual methods
.method protected getBackgroundColorSetting()Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;
    .locals 1

    .line 224
    sget-object v0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->LIST:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    return-object v0
.end method

.method protected getColorizeView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainerId()I
    .locals 1

    const v0, 0x7f09007a

    return v0
.end method

.method protected getDrawerIndicator()Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;
    .locals 1

    .line 231
    sget-object v0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;->DRAWER:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;

    return-object v0
.end method

.method protected getMatcherUris()[Lcom/sonyericsson/music/library/BaseFragment$MatcherData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMusicActivity()Lcom/sonyericsson/music/MusicActivity;
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;->isMusicActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubTag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSystemUIConfig()Lcom/sonyericsson/music/library/SystemUIConfig;
    .locals 1

    .line 442
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/library/SystemUIConfig;->getDefault(Landroid/content/Context;)Lcom/sonyericsson/music/library/SystemUIConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getToolbarContentColor()I
    .locals 1

    .line 438
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/ThemeColor;->controlNormal(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected isContentFragment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isFragmentHandlesToolbarClicks()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isFragmentHandlesToolbarMode()Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->isContentFragment()Z

    move-result v0

    return v0
.end method

.method protected isTargetForBackgroundColor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isTransparentToolbar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected matchUri(Landroid/net/Uri;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/BaseFragment;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method protected onApplyTopPadding(II)I
    .locals 0

    add-int/2addr p1, p2

    return p1
.end method

.method public onBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 162
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMatcherUris()[Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    array-length v0, p1

    if-lez v0, :cond_0

    .line 166
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 167
    iget-object v3, p0, Lcom/sonyericsson/music/library/BaseFragment;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v4, v2, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;->mAuthority:Ljava/lang/String;

    iget-object v5, v2, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;->mPath:Ljava/lang/String;

    iget v2, v2, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;->mId:I

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onGetToolbarScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;
    .locals 1

    .line 381
    new-instance v0, Lcom/sonyericsson/music/ToolbarControl$FixedScroller;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/ToolbarControl$FixedScroller;-><init>(Lcom/sonyericsson/music/ToolbarControl;)V

    return-object v0
.end method

.method public onInsetsChanged(Landroid/graphics/Rect;)V
    .locals 1

    .line 284
    iget v0, p0, Lcom/sonyericsson/music/library/BaseFragment;->mStatusBarHeight:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-eq v0, p1, :cond_0

    .line 285
    iput p1, p0, Lcom/sonyericsson/music/library/BaseFragment;->mStatusBarHeight:I

    .line 286
    iget p1, p0, Lcom/sonyericsson/music/library/BaseFragment;->mStatusBarHeight:I

    iget v0, p0, Lcom/sonyericsson/music/library/BaseFragment;->mToolbarHeight:I

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/library/BaseFragment;->applyTopPaddingPreDraw(II)V

    :cond_0
    return-void
.end method

.method public onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 174
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarContentColor()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/UIUtils;->colorizeToolbarContent(Lcom/sonyericsson/music/ToolbarControl;I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 183
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->isTargetForBackgroundColor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;->setBgColor()V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->isFragmentHandlesToolbarMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->isTransparentToolbar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->setToolbarTransparent()V

    goto :goto_1

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getColorizeView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 199
    :goto_0
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->setColorizedView(Landroid/view/View;)V

    .line 200
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/MusicActivity;->setToolbarColorized(Z)V

    .line 204
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->isContentFragment()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->setMiniplayerShadow()V

    .line 206
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getDrawerIndicator()Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->setDrawerIndicator(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;)V

    goto :goto_2

    .line 207
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->isFragmentHandlesToolbarClicks()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 208
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getDrawerIndicator()Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->setDrawerIndicator(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 361
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 363
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;->calculateInitialTopPadding()V

    .line 365
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;->registerForWindowInsets()V

    .line 366
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;->registerForToolbarHeight()V

    .line 367
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->isContentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    .line 369
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/BaseFragment;->onGetToolbarScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/ToolbarControl;->setScroller(Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;)V

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;->setupSystemUI()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 386
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 388
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;->unregisterForWindowInsets()V

    .line 390
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;->unregisterForToolbarHeight()V

    .line 391
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->isContentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/ToolbarControl;->unsetScroller()V

    :cond_0
    return-void
.end method

.method public onToolbarHeightChanged(I)V
    .locals 1

    .line 300
    iget v0, p0, Lcom/sonyericsson/music/library/BaseFragment;->mToolbarHeight:I

    if-eq v0, p1, :cond_0

    .line 301
    iput p1, p0, Lcom/sonyericsson/music/library/BaseFragment;->mToolbarHeight:I

    .line 302
    iget p1, p0, Lcom/sonyericsson/music/library/BaseFragment;->mStatusBarHeight:I

    iget v0, p0, Lcom/sonyericsson/music/library/BaseFragment;->mToolbarHeight:I

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/library/BaseFragment;->applyTopPaddingPreDraw(II)V

    :cond_0
    return-void
.end method

.method protected setAppBarFooter(Landroid/view/View;)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/MusicActivity;->setAppBarFooter(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected setTitle()V
    .locals 3

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/BaseFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;->isMusicActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/MusicActivity;->setActionBarTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
