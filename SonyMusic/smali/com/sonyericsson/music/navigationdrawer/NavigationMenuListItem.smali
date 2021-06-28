.class public Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;
.super Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;
.source "NavigationMenuListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;,
        Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;
    }
.end annotation


# instance fields
.field protected mActionBarTitle:Ljava/lang/String;

.field protected mComponentName:Landroid/content/ComponentName;

.field private mContentDescription:Ljava/lang/String;

.field protected mDestinationFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected mIconResource:I

.field protected mThemeIcon:Z

.field protected mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;-><init>(Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0, p5}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;-><init>(ILjava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mTitle:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mIconResource:I

    .line 48
    iput-object p4, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mDestinationFragmentClass:Ljava/lang/Class;

    .line 49
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mActionBarTitle:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mContentDescription:Ljava/lang/String;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mComponentName:Landroid/content/ComponentName;

    .line 52
    iput-boolean p3, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mThemeIcon:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->getMenuContentDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMenuContentDescription()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getDestinationFragment()Landroidx/fragment/app/Fragment;
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mDestinationFragmentClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 117
    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 119
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 120
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 121
    iget-object v3, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mActionBarTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragmentData()Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;
    .locals 3

    .line 108
    new-instance v0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;

    invoke-virtual {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->getDestinationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->getMenuItemTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-object v0
.end method

.method getIconResourceId()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mIconResource:I

    return v0
.end method

.method public getMenuTitle()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method getStableId()J
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method protected getTargetResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method public hasContextMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method menuItemAction(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 138
    invoke-interface {p2, p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;->onNavigationDrawerItemSelected(Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onContextMenuClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mActionBarTitle:Ljava/lang/String;

    return-void
.end method

.method setContentDescription(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mContentDescription:Ljava/lang/String;

    return-void
.end method
