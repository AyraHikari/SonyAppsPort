.class public abstract Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;
.super Ljava/lang/Object;
.source "NavigationMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem$MenuItemVH;
    }
.end annotation


# static fields
.field static final TYPE_DIVIDER_ITEM:I = 0x1

.field static final TYPE_LIST_ITEM:I = 0x0

.field static final TYPE_TOP_ITEM:I = 0x2


# instance fields
.field private mIsInitialItem:Z

.field private mIsStickySelect:Z

.field private final mTag:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->mIsStickySelect:Z

    .line 39
    iput-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->mTag:Ljava/lang/String;

    .line 40
    iput p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->mType:I

    return-void
.end method


# virtual methods
.method public getMenuItemTag()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method abstract getStableId()J
.end method

.method getType()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->mType:I

    return v0
.end method

.method isInitialItem()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->mIsInitialItem:Z

    return v0
.end method

.method public isStickySelect()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->mIsStickySelect:Z

    return v0
.end method

.method abstract menuItemAction(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;)Z
.end method

.method public setIsInitialItem(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->mIsInitialItem:Z

    return-void
.end method

.method public setStickySelect(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->mIsStickySelect:Z

    return-void
.end method
