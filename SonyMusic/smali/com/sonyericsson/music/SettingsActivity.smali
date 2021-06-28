.class public Lcom/sonyericsson/music/SettingsActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "SettingsActivity.java"


# instance fields
.field private mHasServiceBinder:Z

.field mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/sonyericsson/music/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/SettingsActivity$1;-><init>(Lcom/sonyericsson/music/SettingsActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/music/SettingsActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public getMediaPlayback()Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsActivity;->mMediaPlayback:Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 66
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->setDefaultLightSystemUI(Landroid/app/Activity;)V

    .line 70
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/music/common/MusicUtils;->startAndBindMediaPlaybackService(Landroid/content/Context;Landroid/content/ServiceConnection;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/SettingsActivity;->mHasServiceBinder:Z

    if-nez p1, :cond_1

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x1020002

    .line 84
    invoke-static {}, Lcom/sonyericsson/music/SettingsFragment;->newInstance()Lcom/sonyericsson/music/SettingsFragment;

    move-result-object v1

    const-string v2, "SettingsFragment"

    .line 83
    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 86
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    const/4 p1, 0x3

    .line 90
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 111
    iget-boolean v0, p0, Lcom/sonyericsson/music/SettingsActivity;->mHasServiceBinder:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/music/SettingsActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/sonyericsson/music/SettingsActivity;->mHasServiceBinder:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 104
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method
