.class Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem;
.super Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;
.source "NavigationMenuTopItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem$MenuTopItemVH;
    }
.end annotation


# static fields
.field static dividerId:I


# instance fields
.field private final mStableId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const-string v0, "MenuTopItem"

    const/4 v1, 0x2

    .line 23
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;-><init>(ILjava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->getMenuItemTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem;->dividerId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem;->dividerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem;->mStableId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getStableId()J
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuTopItem;->mStableId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method menuItemAction(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
