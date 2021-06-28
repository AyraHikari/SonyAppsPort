.class Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;
.super Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;
.source "ExtensionsMenuItem.java"


# static fields
.field private static final NO_DATA:I = -0x1


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, v1, v0, v1, v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mComponentName:Landroid/content/ComponentName;

    .line 49
    iget-object p2, p3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 51
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->setStickySelect(Z)V

    if-nez p2, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sonymobile.media.dashboard.APPLICATION_PACKAGE"

    const/4 v2, -0x1

    .line 64
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 65
    invoke-direct {p0, v0, p3, v1}, Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;->getResIdFromPkgNameId(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;I)Landroid/util/Pair;

    move-result-object v1

    .line 66
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 67
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v3, :cond_1

    if-nez v1, :cond_3

    :cond_1
    const-string v1, "com.sonymobile.media.dashboard.SMALL_ICON"

    .line 71
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    const-string v1, "com.sonymobile.media.dashboard.BACKGROUND_ICON"

    .line 73
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    const-string v1, "com.sonymobile.media.dashboard.TITLE"

    .line 75
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 78
    :try_start_0
    iget-object p2, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;->mResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;->mResources:Landroid/content/res/Resources;

    if-nez p2, :cond_4

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;->mResources:Landroid/content/res/Resources;

    :cond_4
    if-eq v1, v2, :cond_5

    .line 88
    :try_start_1
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p1, ""

    :goto_1
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mTitle:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string p1, ""

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mTitle:Ljava/lang/String;

    .line 92
    :goto_2
    iput v3, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mIconResource:I

    return-void
.end method

.method private getResIdFromPkgNameId(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ActivityInfo;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    .line 101
    :try_start_0
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 105
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 108
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;->mResources:Landroid/content/res/Resources;

    .line 112
    new-instance p1, Landroid/util/Pair;

    iget p3, p2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getMenuTitle()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getTargetResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;->mResources:Landroid/content/res/Resources;

    return-object p1
.end method

.method public hasContextMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method menuItemAction(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;)Z
    .locals 2

    .line 162
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.sonymobile.media.dashboard.ACTION_VIEW_MUSIC_TILE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 164
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onContextMenuClick(Landroid/view/View;)V
    .locals 4

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v1, Landroid/view/MenuInflater;

    invoke-direct {v1, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f0d0001

    .line 144
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 145
    new-instance p1, Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem$1;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem$1;-><init>(Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 156
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    :cond_0
    return-void
.end method
