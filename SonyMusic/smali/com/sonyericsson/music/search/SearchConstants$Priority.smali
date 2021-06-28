.class public final enum Lcom/sonyericsson/music/search/SearchConstants$Priority;
.super Ljava/lang/Enum;
.source "SearchConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/search/SearchConstants$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/search/SearchConstants$Priority;

.field public static final enum HIGH:Lcom/sonyericsson/music/search/SearchConstants$Priority;

.field public static final enum LOW:Lcom/sonyericsson/music/search/SearchConstants$Priority;

.field public static final enum MEDIUM:Lcom/sonyericsson/music/search/SearchConstants$Priority;

.field public static final enum NO_MATCH:Lcom/sonyericsson/music/search/SearchConstants$Priority;

.field public static final enum VERY_HIGH:Lcom/sonyericsson/music/search/SearchConstants$Priority;

.field public static final enum VERY_LOW:Lcom/sonyericsson/music/search/SearchConstants$Priority;


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 39
    new-instance v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;

    const-string v1, "VERY_HIGH"

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/music/search/SearchConstants$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;->VERY_HIGH:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    .line 40
    new-instance v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;

    const-string v1, "HIGH"

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v4}, Lcom/sonyericsson/music/search/SearchConstants$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;->HIGH:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    .line 41
    new-instance v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;

    const-string v1, "MEDIUM"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v6}, Lcom/sonyericsson/music/search/SearchConstants$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;->MEDIUM:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    .line 42
    new-instance v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v4, v5}, Lcom/sonyericsson/music/search/SearchConstants$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;->LOW:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    .line 43
    new-instance v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;

    const-string v1, "VERY_LOW"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/music/search/SearchConstants$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;->VERY_LOW:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    .line 44
    new-instance v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;

    const-string v1, "NO_MATCH"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/sonyericsson/music/search/SearchConstants$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;->NO_MATCH:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    const/4 v0, 0x6

    .line 37
    new-array v0, v0, [Lcom/sonyericsson/music/search/SearchConstants$Priority;

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Priority;->VERY_HIGH:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Priority;->HIGH:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Priority;->MEDIUM:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Priority;->LOW:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Priority;->VERY_LOW:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Priority;->NO_MATCH:Lcom/sonyericsson/music/search/SearchConstants$Priority;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;->$VALUES:[Lcom/sonyericsson/music/search/SearchConstants$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/sonyericsson/music/search/SearchConstants$Priority;->mValue:I

    return-void
.end method

.method public static from(I)Lcom/sonyericsson/music/search/SearchConstants$Priority;
    .locals 5

    .line 57
    invoke-static {}, Lcom/sonyericsson/music/search/SearchConstants$Priority;->values()[Lcom/sonyericsson/music/search/SearchConstants$Priority;

    move-result-object v0

    .line 58
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 59
    iget v4, v3, Lcom/sonyericsson/music/search/SearchConstants$Priority;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/search/SearchConstants$Priority;
    .locals 1

    .line 37
    const-class v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/search/SearchConstants$Priority;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/search/SearchConstants$Priority;
    .locals 1

    .line 37
    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$Priority;->$VALUES:[Lcom/sonyericsson/music/search/SearchConstants$Priority;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/search/SearchConstants$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/search/SearchConstants$Priority;

    return-object v0
.end method


# virtual methods
.method value()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/sonyericsson/music/search/SearchConstants$Priority;->mValue:I

    return v0
.end method
