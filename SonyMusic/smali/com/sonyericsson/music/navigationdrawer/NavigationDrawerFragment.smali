.class public Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;
.super Lcom/sonyericsson/music/library/BaseFragment;
.source "NavigationDrawerFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnTouchListener;
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;,
        Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;,
        Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/library/BaseFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;",
        ">;>;",
        "Landroid/view/View$OnTouchListener;",
        "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
        "Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final EXTENSIONS_MENU_ITEMS_LOADER:I = 0xc

.field private static final NO_CURRENT_SELECTION:I = -0x1

.field private static final PREF_KEY_IS_MORA_DISABLED:Ljava/lang/String; = "is_mora_disabled"

.field private static final PREF_USER_LEARNED_DRAWER:Ljava/lang/String; = "navigation_drawer_learned"

.field private static final STATE_SELECTED_POSITION:Ljava/lang/String; = "selected_navigation_drawer_position"


# instance fields
.field private mContent:Landroid/view/View;

.field private mCurrentSelectedPosition:I

.field private mDelegate:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;

.field private mDividerMenuItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

.field private mDrawerBackground:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

.field private mDrawerItemClicked:Z

.field private mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mDrawerListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mDrawerListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;

.field private mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private mDrawerTopShade:Landroid/view/View;

.field private final mExtensionMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mExtensionsListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mExtensionsListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;

.field private mExtensionsMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

.field private final mExtensionsObserver:Landroid/database/ContentObserver;

.field private mExtensionsWrapper:Landroid/view/View;

.field private mFragmentContainerView:Landroid/view/View;

.field private mFromSavedInstanceState:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsGoogleDriveDisabled:Z

.field private mIsMoraDisabled:Z

.field private mListenersNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

.field private final mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuLoadedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPodcastMenuItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

.field private mRootView:Landroid/view/View;

.field private mSettingsMenuItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

.field private final mStaticMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUserLearnedDrawer:Z

.field private menuTopItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 250
    invoke-direct {p0}, Lcom/sonyericsson/music/library/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 149
    iput v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuItems:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mStaticMenuItems:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionMenuItems:Ljava/util/List;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuLoadedListeners:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mListenersNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    iput-boolean v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerItemClicked:Z

    .line 187
    iput-boolean v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mIsMoraDisabled:Z

    .line 189
    iput-boolean v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mIsGoogleDriveDisabled:Z

    .line 191
    new-instance v0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$1;-><init>(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsObserver:Landroid/database/ContentObserver;

    .line 203
    new-instance v0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$2;-><init>(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;

    .line 239
    new-instance v0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$3;-><init>(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    return p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDelegate:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;I)I
    .locals 0

    .line 73
    iput p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/MusicActivity;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Landroid/view/View;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/ui/BlurredDrawerContainer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerBackground:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Landroidx/appcompat/app/ActionBarDrawerToggle;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuLoadedListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerItemClicked:Z

    return p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerItemClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/MusicActivity;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/MusicActivity;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/MusicActivity;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    return p0
.end method

.method static synthetic access$802(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/MusicActivity;
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p0

    return-object p0
.end method

.method private getLandingPagePosition()I
    .locals 3

    .line 664
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 666
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    .line 667
    invoke-virtual {v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->isInitialItem()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private initStaticItems()V
    .locals 10

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mStaticMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mStaticMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem;

    invoke-direct {v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->menuTopItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem;

    .line 309
    new-instance v1, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuDividerItem;

    invoke-direct {v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuDividerItem;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDividerMenuItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    .line 312
    new-instance v1, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;

    const v2, 0x7f10015a

    .line 313
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08008a

    const-class v4, Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    const-string v5, "LandingPageFragment"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 315
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->setIsInitialItem(Z)V

    const v2, 0x7f100127

    .line 316
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->setActionBarTitle(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mStaticMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mStaticMenuItems:Ljava/util/List;

    new-instance v2, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;

    const v3, 0x7f1002b6

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08008d

    const-class v5, Lcom/sonyericsson/music/playqueue/PlayqueueFragment;

    const-string v6, "playqueue"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-static {v0}, Lcom/sonyericsson/music/library/Page;->getEnabledPages(Landroid/content/Context;)[Lcom/sonyericsson/music/library/Page;

    move-result-object v1

    .line 325
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 326
    iget-object v5, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mStaticMenuItems:Ljava/util/List;

    new-instance v6, Lcom/sonyericsson/music/navigationdrawer/MyLibraryNavigationMenuItem;

    invoke-direct {v6, v0, v4}, Lcom/sonyericsson/music/navigationdrawer/MyLibraryNavigationMenuItem;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/library/Page;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mStaticMenuItems:Ljava/util/List;

    new-instance v2, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;

    const v3, 0x7f1002b3

    .line 331
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080087

    const-class v5, Lcom/sonyericsson/music/library/FoldersFragment;

    const-string v6, "folders"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->isGoogleDriveAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    new-instance v1, Lcom/sonyericsson/music/navigationdrawer/NoFragmentMenuItem;

    const v2, 0x7f10019b

    .line 337
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080086

    const-string v4, "google_drive_fragment"

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/music/navigationdrawer/NoFragmentMenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mStaticMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_2
    new-instance v1, Lcom/sonyericsson/music/navigationdrawer/NoFragmentMenuItem;

    const v2, 0x7f1002b7

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08008e

    const-string v4, "Podcast"

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/music/navigationdrawer/NoFragmentMenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mPodcastMenuItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    .line 346
    invoke-static {v0}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isMoraStoreEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mIsMoraDisabled:Z

    if-nez v1, :cond_3

    .line 348
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 349
    sget-object v1, Lcom/sonyericsson/music/library/store/MoraNewReleasesGenres;->TOTAL:Lcom/sonyericsson/music/library/store/MoraNewReleasesGenres;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/store/MoraNewReleasesGenres;->getStorePage()Lcom/sonyericsson/music/library/store/StorePage;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v1, Lcom/sonyericsson/music/library/store/MoraNewReleasesGenres;->JAPANESE:Lcom/sonyericsson/music/library/store/MoraNewReleasesGenres;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/store/MoraNewReleasesGenres;->getStorePage()Lcom/sonyericsson/music/library/store/StorePage;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v1, Lcom/sonyericsson/music/library/store/MoraNewReleasesGenres;->WESTERN_AND_ASIAN:Lcom/sonyericsson/music/library/store/MoraNewReleasesGenres;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/store/MoraNewReleasesGenres;->getStorePage()Lcom/sonyericsson/music/library/store/StorePage;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v1, Lcom/sonyericsson/music/library/store/MoraNewReleasesGenres;->HIRES:Lcom/sonyericsson/music/library/store/MoraNewReleasesGenres;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/store/MoraNewReleasesGenres;->getStorePage()Lcom/sonyericsson/music/library/store/StorePage;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v8, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mStaticMenuItems:Ljava/util/List;

    new-instance v9, Lcom/sonyericsson/music/navigationdrawer/MoraNavigationMenuItem;

    const v3, 0x7f100102

    const v4, 0x7f08008b

    const v6, 0x7f100102

    const-string v7, "mora_new_releases"

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/navigationdrawer/MoraNavigationMenuItem;-><init>(Landroid/content/Context;IILjava/util/ArrayList;ILjava/lang/String;)V

    .line 354
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 360
    sget-object v1, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->TOTAL:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->getStorePage()Lcom/sonyericsson/music/library/store/StorePage;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v1, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->JAPANESE:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->getStorePage()Lcom/sonyericsson/music/library/store/StorePage;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v1, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->WESTERN_AND_ASIAN:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->getStorePage()Lcom/sonyericsson/music/library/store/StorePage;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v1, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->HIRES:Lcom/sonyericsson/music/library/store/MoraChartsGenres;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/store/MoraChartsGenres;->getStorePage()Lcom/sonyericsson/music/library/store/StorePage;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v8, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mStaticMenuItems:Ljava/util/List;

    new-instance v9, Lcom/sonyericsson/music/navigationdrawer/MoraNavigationMenuItem;

    const v3, 0x7f100101

    const v4, 0x7f080085

    const v6, 0x7f100101

    const-string v7, "mora_charts"

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/navigationdrawer/MoraNavigationMenuItem;-><init>(Landroid/content/Context;IILjava/util/ArrayList;ILjava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_3
    new-instance v0, Lcom/sonyericsson/music/navigationdrawer/NoFragmentMenuItem;

    const v1, 0x7f100200

    .line 371
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08008f

    const-string v3, "Settings"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/music/navigationdrawer/NoFragmentMenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mSettingsMenuItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    return-void
.end method

.method private populateList()V
    .locals 4

    .line 739
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 745
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 747
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuItems:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->menuTopItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mStaticMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 751
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mStaticMenuItems:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 754
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isPodcastAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 755
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuItems:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mPodcastMenuItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuItems:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDividerMenuItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuItems:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mSettingsMenuItem:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionMenuItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->swapData(Ljava/util/List;)V

    .line 763
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 764
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsWrapper:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 766
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsWrapper:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 769
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->swapData(Ljava/util/List;)V

    .line 771
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mListenersNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mStaticMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 772
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mListenersNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 773
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$7;

    invoke-direct {v2, p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$7;-><init>(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 791
    :cond_4
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getTopFragment()Lcom/sonyericsson/music/library/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 793
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/BaseFragment;->getSubTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/sonyericsson/music/library/BaseFragment;->getSubTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 794
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->setFocus(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private scheduleInitLoaders()V
    .locals 2

    .line 376
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$4;-><init>(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->runAfterStartup(Lcom/sonyericsson/music/MusicActivity$StartupTask;)V

    return-void
.end method


# virtual methods
.method public addMenuLoadedListener(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mListenersNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-interface {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;->onStaticItemsLoaded()V

    :cond_1
    return-void
.end method

.method public closeAndLockDrawer()V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void
.end method

.method public closeDrawer()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 614
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected getBackgroundColorSetting()Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;
    .locals 1

    .line 867
    sget-object v0, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->NONE:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    return-object v0
.end method

.method protected isContentFragment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDrawerOpen()Z
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isTargetForBackgroundColor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 390
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 393
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 395
    invoke-direct {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->populateList()V

    return-void
.end method

.method public onBackStackChanged()V
    .locals 3

    .line 805
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 806
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, -0x1

    .line 808
    iput v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    goto :goto_0

    .line 810
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->getLandingPagePosition()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 814
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 816
    invoke-interface {v1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/BaseFragment;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_3

    .line 818
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/BaseFragment;->getSubTag()Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->setFocus(Ljava/lang/String;)V

    goto :goto_3

    .line 823
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 824
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    .line 826
    invoke-virtual {v2}, Lcom/sonyericsson/music/MusicFragmentManager;->getRootFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->setFocus(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 599
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    sget-object v0, Lcom/sonyericsson/music/MusicActivity$BackSource;->HOME:Lcom/sonyericsson/music/MusicActivity$BackSource;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/MusicActivity;->onBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)V

    return-void
.end method

.method public onConfigFetchComplete()V
    .locals 4

    .line 879
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isMoraDisabled()Z

    move-result v0

    .line 880
    iget-boolean v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mIsMoraDisabled:Z

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    .line 881
    iput-boolean v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mIsMoraDisabled:Z

    .line 884
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 885
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_mora_disabled"

    iget-boolean v3, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mIsMoraDisabled:Z

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 891
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getGoogleDriveDisabled(Landroid/content/Context;)Z

    move-result v1

    .line 892
    iget-boolean v3, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mIsGoogleDriveDisabled:Z

    if-eq v3, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 898
    invoke-direct {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->initStaticItems()V

    .line 899
    invoke-direct {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->populateList()V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 685
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 687
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 269
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "navigation_drawer_learned"

    const/4 v2, 0x0

    .line 273
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    .line 275
    new-instance v1, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    .line 276
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 277
    new-instance v1, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    .line 278
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    if-eqz p1, :cond_0

    const-string v1, "selected_navigation_drawer_position"

    .line 281
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 282
    iput-boolean v3, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mFromSavedInstanceState:Z

    .line 285
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mHandler:Landroid/os/Handler;

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    const-string p1, "is_mora_disabled"

    .line 289
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mIsMoraDisabled:Z

    .line 292
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getGoogleDriveDisabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mIsGoogleDriveDisabled:Z

    .line 294
    invoke-direct {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->initStaticItems()V

    .line 296
    invoke-direct {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->scheduleInitLoaders()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;",
            ">;>;"
        }
    .end annotation

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 719
    :cond_0
    new-instance p1, Lcom/sonyericsson/music/navigationdrawer/LoaderExtensionsMenu;

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/navigationdrawer/LoaderExtensionsMenu;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0041

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 401
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f09007a

    .line 403
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mContent:Landroid/view/View;

    const p2, 0x7f09009c

    .line 404
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 405
    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerListView:Landroidx/recyclerview/widget/RecyclerView;

    const p3, 0x7f0900b7

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setNextFocusDownId(I)V

    .line 406
    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 407
    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 408
    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->setListener(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;)V

    const p2, 0x7f0900b9

    .line 410
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsWrapper:Landroid/view/View;

    .line 411
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 412
    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 413
    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 414
    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    iget-object p3, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsListener:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;

    invoke-virtual {p2, p3}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->setListener(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;)V

    const p2, 0x7f09015b

    .line 416
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerTopShade:Landroid/view/View;

    .line 418
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->addConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 473
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 474
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 476
    invoke-static {p0}, Lcom/sonyericsson/music/MusicApplication;->removeConfigFetchCompleteListener(Lcom/sonyericsson/music/MusicApplication$ConfigFetchCompleteListener;)V

    return-void
.end method

.method public onInsetsChanged(Landroid/graphics/Rect;)V
    .locals 5

    .line 425
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onInsetsChanged(Landroid/graphics/Rect;)V

    .line 428
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 429
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/UIUtils;->isSeascapeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 431
    iget v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 432
    iget v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 433
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070120

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 435
    iget-object v4, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mRootView:Landroid/view/View;

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    invoke-static {v4, v1}, Lcom/sonyericsson/music/common/ViewUtils;->safeSetWidth(Landroid/view/View;I)V

    .line 437
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mContent:Landroid/view/View;

    invoke-static {v1, v0, v2, v3, v2}, Lcom/sonyericsson/music/common/ViewUtils;->safeSetPadding(Landroid/view/View;IIII)V

    .line 442
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_3

    .line 443
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerTopShade:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerTopShade:Landroid/view/View;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/ViewUtils;->safeSetHeight(Landroid/view/View;I)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 727
    invoke-virtual {p1}, Landroidx/loader/content/Loader;->getId()I

    move-result p1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionMenuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 730
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionMenuItems:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 734
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->populateList()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 679
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "selected_navigation_drawer_position"

    .line 680
    iget v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 457
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onStart()V

    .line 458
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    .line 459
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 460
    invoke-static {v0}, Lcom/sonyericsson/music/extension/ExtensionProvider;->getExtensionManagerContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 459
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 466
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onStop()V

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    .line 468
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mExtensionsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public openDrawer()V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    return-void
.end method

.method public removeMenuLoadedListener(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$MenuLoadedListener;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuLoadedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 862
    iput v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    return-void
.end method

.method public setDelegate(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDelegate:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;

    return-void
.end method

.method public setDrawerIndicator(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;)V
    .locals 2

    .line 849
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 851
    sget-object v1, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;->DRAWER:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;

    if-ne p1, v1, :cond_0

    .line 852
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    goto :goto_0

    .line 854
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$DrawerIndicator;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 855
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 856
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFocus(Ljava/lang/String;)V
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    if-eqz v0, :cond_1

    .line 701
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->getPositionOfFragment(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 704
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->updateListItemHighlight(I)V

    goto :goto_0

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->isStickySelect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->updateListItemHighlight(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setup(ILandroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 7

    .line 492
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    .line 493
    iput-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 495
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v2

    .line 497
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    check-cast p1, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerBackground:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    .line 498
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerBackground:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->attachToDrawerLayout(Landroidx/drawerlayout/widget/DrawerLayout;)V

    .line 499
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    .line 500
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerBackground:Lcom/sonyericsson/music/ui/BlurredDrawerContainer;

    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x7f09007d

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ui/BlurredDrawerContainer;->setBlurSource(Landroid/view/View;)V

    .line 505
    :cond_0
    new-instance p1, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;

    iget-object v3, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/music/MusicActivity;->getToolbar()Lcom/sonyericsson/music/ui/ShadowingToolbar;

    move-result-object v4

    const v5, 0x7f10022e

    const v6, 0x7f10022d

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$5;-><init>(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 p1, 0x0

    .line 566
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-boolean p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mFromSavedInstanceState:Z

    if-nez p1, :cond_1

    .line 574
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->isLandingPageToBeShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 575
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 579
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance p2, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$6;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$6;-><init>(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 594
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method

.method public showLandingPage()V
    .locals 3

    .line 634
    invoke-direct {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->getLandingPagePosition()I

    move-result v0

    .line 635
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->getItemCount()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 636
    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->getItem(I)Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 641
    :cond_0
    iget v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 642
    iput v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 643
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDelegate:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->menuItemAction(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;)Z

    :cond_1
    return-void
.end method

.method public toggleDrawer()V
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->closeDrawer()V

    goto :goto_0

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->openDrawer()V

    :goto_0
    return-void
.end method

.method public tryToShowInitialPage()V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mMenuAdapter:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 628
    iget v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 629
    invoke-virtual {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->showLandingPage()V

    :cond_1
    return-void
.end method

.method public unlockDrawer()V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void
.end method
