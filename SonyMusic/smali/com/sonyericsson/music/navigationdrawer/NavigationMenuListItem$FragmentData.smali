.class public Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;
.super Ljava/lang/Object;
.source "NavigationMenuListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentData"
.end annotation


# instance fields
.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;->mTag:Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$FragmentData;->mTag:Ljava/lang/String;

    return-object v0
.end method
