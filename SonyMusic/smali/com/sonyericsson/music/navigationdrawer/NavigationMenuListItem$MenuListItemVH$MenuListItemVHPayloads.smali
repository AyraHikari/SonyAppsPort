.class final enum Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;
.super Ljava/lang/Enum;
.source "NavigationMenuListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MenuListItemVHPayloads"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

.field public static final enum SET_HIGHLIGHT:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

.field public static final enum UPDATE_ALL:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 167
    new-instance v0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    const-string v1, "UPDATE_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;->UPDATE_ALL:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    new-instance v0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    const-string v1, "SET_HIGHLIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;->SET_HIGHLIGHT:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    const/4 v0, 0x2

    .line 166
    new-array v0, v0, [Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    sget-object v1, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;->UPDATE_ALL:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;->SET_HIGHLIGHT:Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;->$VALUES:[Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;
    .locals 1

    .line 166
    const-class v0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;
    .locals 1

    .line 166
    sget-object v0, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;->$VALUES:[Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem$MenuListItemVH$MenuListItemVHPayloads;

    return-object v0
.end method
