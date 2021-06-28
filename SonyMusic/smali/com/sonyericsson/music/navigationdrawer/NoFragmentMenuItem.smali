.class Lcom/sonyericsson/music/navigationdrawer/NoFragmentMenuItem;
.super Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;
.source "NoFragmentMenuItem.java"


# static fields
.field static final GOOGLE_DRIVE_TAG:Ljava/lang/String; = "google_drive_fragment"

.field static final PODCAST_TAG:Ljava/lang/String; = "Podcast"

.field static final SETTINGS_TAG:Ljava/lang/String; = "Settings"


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sonyericsson/music/navigationdrawer/NoFragmentMenuItem;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;-><init>(Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method menuItemAction(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;)Z
    .locals 3

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->getMenuItemTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_drive_fragment"

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/sonyericsson/music/MusicFragmentManager;->getTopFragmentTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_drive_fragment"

    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    sget-object v0, Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;->DRIVE_SIGN_IN:Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/MusicActivity;->googleSignIn(Lcom/sonyericsson/music/authentication/GoogleSignInSignOutActivity$LaunchAction;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "Podcast"

    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->openPodcast()V

    goto :goto_0

    :cond_2
    const-string v2, "Settings"

    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->openSettings()V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
