.class public Lcom/sonyericsson/music/MusicFragmentManager;
.super Ljava/lang/Object;
.source "MusicFragmentManager.java"

# interfaces
.implements Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/MusicFragmentManager$EmptyFragment;
    }
.end annotation


# static fields
.field private static final CONTAINER_IDS:[I

.field public static final CONTAINER_ID_DEFAULT:I = 0x7f09007a

.field private static final HIDE_MINI_PLAYER_DELAY:J = 0x1f4L

.field static final SHOW_STACK_DEBUG:Z


# instance fields
.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mHideMiniPlayerRunnable:Ljava/lang/Runnable;

.field private final mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

.field private mRootFragmentTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/music/MusicFragmentManager;->CONTAINER_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f09007a
        0x7f09007c
    .end array-data
.end method

.method public constructor <init>(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LandingPageFragment"

    .line 61
    iput-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mRootFragmentTag:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/sonyericsson/music/MusicFragmentManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/MusicFragmentManager$1;-><init>(Lcom/sonyericsson/music/MusicFragmentManager;)V

    iput-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mHideMiniPlayerRunnable:Ljava/lang/Runnable;

    .line 72
    iput-object p1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 73
    iget-object p1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 74
    iget-object p1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/MusicFragmentManager;)Landroid/view/View;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->getMiniPlayerView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private clearBackStack()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private containerForFragment(Landroidx/fragment/app/Fragment;)I
    .locals 1

    .line 186
    instance-of v0, p1, Lcom/sonyericsson/music/library/BaseFragment;

    if-eqz v0, :cond_0

    .line 187
    check-cast p1, Lcom/sonyericsson/music/library/BaseFragment;

    .line 188
    invoke-virtual {p1}, Lcom/sonyericsson/music/library/BaseFragment;->getContainerId()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7f09007a

    :goto_0
    return p1
.end method

.method private debugPrintFragmentStack()V
    .locals 0

    return-void
.end method

.method private ensureLandingPageFragment()Z
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->hasLandingPage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->clearBackStack()V

    .line 324
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->openLandingPage()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getBackStackTop(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentManager$BackStackEntry;
    .locals 1

    .line 359
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 360
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getLandingPageFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "LandingPageFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private getMiniPlayerView()Landroid/view/View;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    const v1, 0x7f090123

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getMiniPlayerWrapperView()Landroid/view/View;
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    const v1, 0x7f090125

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatchBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)Z
    .locals 6

    .line 196
    sget-object v0, Lcom/sonyericsson/music/MusicFragmentManager;->CONTAINER_IDS:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 197
    iget-object v5, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 198
    instance-of v5, v4, Lcom/sonyericsson/music/library/BaseFragment;

    if-eqz v5, :cond_0

    .line 199
    check-cast v4, Lcom/sonyericsson/music/library/BaseFragment;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/music/library/BaseFragment;->onBackPressed(Lcom/sonyericsson/music/MusicActivity$BackSource;)Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getBackStackCount()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    return v0
.end method

.method public getRootFragmentTag()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mRootFragmentTag:Ljava/lang/String;

    return-object v0
.end method

.method getTopFragment()Lcom/sonyericsson/music/library/BaseFragment;
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->getTopFragmentTag()Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/BaseFragment;

    return-object v0
.end method

.method public getTopFragmentTag()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/MusicFragmentManager;->getBackStackTop(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->getRootFragmentTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hasLandingPage()Z
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->getLandingPageFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFragmentBackStackTopLandingPage()Z
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/MusicFragmentManager;->getBackStackTop(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->getRootFragmentTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 371
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/library/BaseFragment;

    .line 372
    instance-of v0, v0, Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    return v0
.end method

.method public onActivityDestroyed()V
    .locals 2

    .line 242
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->getMiniPlayerView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mHideMiniPlayerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .line 365
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->debugPrintFragmentStack()V

    return-void
.end method

.method public onNavigationDrawerItemSelected(Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;)V
    .locals 7

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->getFragmentData()Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/library/BaseFragment;

    .line 281
    invoke-virtual {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_9

    const-string v2, "LandingPageFragment"

    .line 283
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 284
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->getLandingPageFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->clearBackStack()V

    goto :goto_1

    .line 288
    :cond_1
    invoke-virtual {p0, v1, v0, v4, v3}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_2
    const-string v2, "my_library_tag"

    .line 290
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    .line 291
    iget-object v2, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 292
    iget-object v6, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0, v6}, Lcom/sonyericsson/music/MusicFragmentManager;->getBackStackTop(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 293
    invoke-interface {v6}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_3
    if-eqz v2, :cond_5

    .line 295
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 302
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->getMenuItemTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "my_library_tag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 303
    check-cast p1, Lcom/sonyericsson/music/navigationdrawer/MyLibraryNavigationMenuItem;

    .line 304
    invoke-virtual {p1}, Lcom/sonyericsson/music/navigationdrawer/MyLibraryNavigationMenuItem;->getMyLibraryPage()Lcom/sonyericsson/music/library/Page;

    move-result-object p1

    .line 305
    check-cast v2, Lcom/sonyericsson/music/library/MyLibraryFragment;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/music/library/MyLibraryFragment;->moveToPage(Lcom/sonyericsson/music/library/Page;)V

    goto :goto_1

    .line 296
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->ensureLandingPageFragment()Z

    .line 297
    invoke-virtual {p0, v1, v0, v4, v4}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 309
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/MusicFragmentManager;->getBackStackTop(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 310
    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 311
    :cond_7
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 312
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->ensureLandingPageFragment()Z

    .line 313
    invoke-virtual {p0, v1, v0, v4, v4}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 316
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1, v4}, Lcom/sonyericsson/music/MusicActivity;->setIsLandingPageToBeShown(Z)V

    .line 317
    iget-object p1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1, v3}, Lcom/sonyericsson/music/MusicActivity;->setLaunchIntoPlayerMode(Z)V

    :cond_9
    return-void
.end method

.method public openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 122
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZZ)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->clearBackStack()V

    .line 143
    :cond_0
    iget-object p3, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    if-eqz p4, :cond_1

    .line 145
    invoke-virtual {p3, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p5, :cond_2

    const-string p4, "PlayerFragment"

    .line 146
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const p4, 0x7f010014

    const p5, 0x7f010015

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p3, p4, v0, p5, v0}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 151
    :cond_1
    iput-object p2, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mRootFragmentTag:Ljava/lang/String;

    .line 154
    :cond_2
    :goto_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/sonyericsson/music/MusicFragmentManager;->placeContent(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_3
    return-void
.end method

.method public openLandingPage()V
    .locals 6

    .line 350
    new-instance v1, Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-direct {v1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;-><init>()V

    .line 351
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 352
    iget-object v2, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    const v3, 0x7f100127

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    .line 353
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string v2, "LandingPageFragment"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 355
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public openSearchView(Ljava/lang/String;)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "search_result"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 252
    invoke-static {p1}, Lcom/sonyericsson/music/search/SearchFragment;->newInstance(Ljava/lang/String;)Lcom/sonyericsson/music/search/SearchFragment;

    move-result-object p1

    const-string v0, "search_result"

    const/4 v2, 0x1

    .line 253
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 255
    :cond_1
    check-cast v0, Lcom/sonyericsson/music/search/SearchFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/music/search/SearchFragment;->clearQuery()V

    .line 256
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/search/SearchFragment;->populateQuery(Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "search_result"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public placeContent(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 6

    .line 164
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/MusicFragmentManager;->containerForFragment(Landroidx/fragment/app/Fragment;)I

    move-result v0

    .line 166
    sget-object v1, Lcom/sonyericsson/music/MusicFragmentManager;->CONTAINER_IDS:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    if-eq v4, v0, :cond_0

    .line 178
    new-instance v5, Lcom/sonyericsson/music/MusicFragmentManager$EmptyFragment;

    invoke-direct {v5}, Lcom/sonyericsson/music/MusicFragmentManager$EmptyFragment;-><init>()V

    invoke-virtual {p1, v4, v5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method public popBackStack(Landroid/app/Activity;)V
    .locals 0

    .line 332
    invoke-static {p1}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_0
    return-void
.end method

.method public popBackStackConditional(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->getTopFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 345
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/MusicFragmentManager;->popBackStack(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public reloadCurrentMyLibraryFragment()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->getTopFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 267
    instance-of v1, v0, Lcom/sonyericsson/music/library/MyLibraryFragment;

    if-eqz v1, :cond_1

    .line 268
    check-cast v0, Lcom/sonyericsson/music/library/MyLibraryFragment;

    .line 269
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/MyLibraryFragment;->reloadCurrentMyLibraryFragment()V

    :cond_1
    return-void
.end method

.method public removeFragment(Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 89
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 90
    iget-object p1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method

.method public setMiniplayerShadow()V
    .locals 3

    .line 232
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->getMiniPlayerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->getMiniPlayerWrapperView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/ui/MiniplayerWrap;

    if-eqz v0, :cond_0

    const/16 v1, 0x258

    const/high16 v2, 0x3f800000    # 1.0f

    .line 236
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/ui/ShadowLayout;->animateShadowAlpha(IF)V

    :cond_0
    return-void
.end method

.method public updateMiniPlayerVisibility(Z)V
    .locals 3

    .line 222
    invoke-direct {p0}, Lcom/sonyericsson/music/MusicFragmentManager;->getMiniPlayerView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mHideMiniPlayerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 225
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/MusicFragmentManager;->mHideMiniPlayerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
