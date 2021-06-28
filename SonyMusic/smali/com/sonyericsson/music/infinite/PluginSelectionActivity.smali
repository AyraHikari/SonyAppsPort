.class public Lcom/sonyericsson/music/infinite/PluginSelectionActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "PluginSelectionActivity.java"


# static fields
.field private static final KEY_ALBUM:Ljava/lang/String; = "KEY_ALBUM"

.field private static final KEY_ARTIST:Ljava/lang/String; = "KEY_ARTIST"

.field private static final KEY_TITLE:Ljava/lang/String; = "KEY_TITLE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/sonyericsson/music/common/Track;)V
    .locals 3

    .line 68
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 69
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v1

    .line 68
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 72
    const-class v2, Lcom/sonyericsson/music/infinite/PluginSelectionActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 73
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "KEY_ARTIST"

    .line 74
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "KEY_ALBUM"

    .line 75
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "KEY_TITLE"

    .line 76
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 39
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->setDefaultSystemUIVisibility(Landroid/app/Activity;)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/music/common/UIUtils;->setSystemUIVisibilityPreKK(Landroid/view/View;Z)Z

    const/4 v1, 0x3

    .line 47
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    if-nez p1, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "KEY_ARTIST"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_ALBUM"

    .line 52
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KEY_TITLE"

    .line 53
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-static {v3, p1, v1, v2, v0}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->show(Landroidx/fragment/app/FragmentManager;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 61
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->DEFAULT_TRANSPARENT:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method
