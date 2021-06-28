.class public Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "EditMusicInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/EditMusicInfoActivity$BackListener;
    }
.end annotation


# static fields
.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final ARTIST_ID:Ljava/lang/String; = "artist_id"

.field public static final TRACK_ID:Ljava/lang/String; = "track_id"


# instance fields
.field private mAlbumId:J

.field private mArtistId:J

.field private mBackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/metadata/EditMusicInfoActivity$BackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBackOption:Z

.field private mFragment:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mLocalImageData:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mBackOption:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mBackListeners:Ljava/util/List;

    return-void
.end method

.method private init()V
    .locals 5

    .line 61
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f100093

    .line 62
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "EditMusicInfoBaseFragment"

    .line 68
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mFragment:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mFragment:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    if-nez v0, :cond_3

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "track_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mTrackId:J

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "artist_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mArtistId:J

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mAlbumId:J

    .line 76
    iget-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mTrackId:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 77
    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;->newInstance(J)Lcom/sonyericsson/music/metadata/EditMusicInfoTrackFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mFragment:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    goto :goto_0

    .line 78
    :cond_0
    iget-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mArtistId:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 79
    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;->newInstance(J)Lcom/sonyericsson/music/metadata/EditMusicInfoArtistFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mFragment:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    goto :goto_0

    .line 80
    :cond_1
    iget-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mAlbumId:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 81
    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;->newInstance(J)Lcom/sonyericsson/music/metadata/EditMusicInfoAlbumFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mFragment:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    .line 84
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mFragment:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mFragment:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    const-string v3, "EditMusicInfoBaseFragment"

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 88
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_3
    const/4 v0, 0x3

    .line 91
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method


# virtual methods
.method public addBackListener(Lcom/sonyericsson/music/metadata/EditMusicInfoActivity$BackListener;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mBackListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mBackListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getLocalImageData()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mLocalImageData:Landroid/util/Pair;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mBackListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity$BackListener;

    .line 121
    invoke-interface {v2}, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity$BackListener;->handleBack()Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 124
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->init()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 97
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 98
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mBackOption:Z

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->toggleActionBar(Landroid/view/Menu;Z)V

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->onBackPressed()V

    return v1

    .line 107
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0901aa

    if-ne v0, v2, :cond_2

    .line 109
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mFragment:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->hasDataToSave()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mFragment:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->saveChanges()V

    :cond_1
    return v1

    .line 114
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 130
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method

.method public removeBackListener(Lcom/sonyericsson/music/metadata/EditMusicInfoActivity$BackListener;)Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mBackListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method resetMiniPlayer()V
    .locals 0

    .line 162
    invoke-static {}, Lcom/sonyericsson/music/MiniPlayerFragment;->removeRetainedArt()V

    return-void
.end method

.method setBackOption(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mBackOption:Z

    .line 135
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public setLocalImageData(Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;->mLocalImageData:Landroid/util/Pair;

    return-void
.end method

.method toggleActionBar(Landroid/view/Menu;Z)V
    .locals 3

    .line 139
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f0901ab

    xor-int/lit8 v2, p2, 0x1

    .line 141
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    :cond_0
    if-nez p2, :cond_1

    const p1, 0x7f08001b

    .line 145
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 147
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
