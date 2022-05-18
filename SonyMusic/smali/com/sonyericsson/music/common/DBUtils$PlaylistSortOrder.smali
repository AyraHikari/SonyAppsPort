.class public final enum Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;
.super Ljava/lang/Enum;
.source "DBUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/DBUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaylistSortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

.field public static final enum ALPHABETICAL:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

.field public static final enum RECENT:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;


# instance fields
.field private final mIndex:I

.field private final mTextResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 320
    new-instance v0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    const-string v1, "ALPHABETICAL"

    const/4 v2, 0x0

    const v3, 0x7f1002a1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->ALPHABETICAL:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    .line 321
    new-instance v0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    const-string v1, "RECENT"

    const/4 v3, 0x1

    const v4, 0x7f1002a5

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->RECENT:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    const/4 v0, 0x2

    .line 319
    new-array v0, v0, [Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    sget-object v1, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->ALPHABETICAL:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->RECENT:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->$VALUES:[Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 331
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 332
    iput p3, p0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->mIndex:I

    .line 333
    iput p4, p0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->mTextResId:I

    return-void
.end method

.method public static indexToSortOrder(I)Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;
    .locals 5

    .line 348
    invoke-static {}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->values()[Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 349
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    :cond_1
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->ALPHABETICAL:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;
    .locals 1

    .line 319
    const-class v0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;
    .locals 1

    .line 319
    sget-object v0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->$VALUES:[Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->mIndex:I

    return v0
.end method

.method public getTextResId()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->mTextResId:I

    return v0
.end method
