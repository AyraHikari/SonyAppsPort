.class final enum Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;
.super Ljava/lang/Enum;
.source "RecentlyPlayedProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RecentlyPlayedColumns"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

.field public static final enum CONTAINER_URI:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

.field public static final enum DATA:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

.field public static final enum HIGH_RES:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

.field public static final enum ID:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

.field public static final enum SUB_ID:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

.field public static final enum SUB_TITLE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

.field public static final enum TIMESTAMP:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

.field public static final enum TITLE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

.field public static final enum TYPE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;


# instance fields
.field final mColumn:Ljava/lang/String;

.field final mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 844
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    const-string v1, "TYPE"

    const-string v2, "type"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TYPE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 845
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    const-string v1, "CONTAINER_URI"

    const-string v2, "container_uri"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->CONTAINER_URI:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 846
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    const-string v1, "TIMESTAMP"

    const-string v2, "timestamp"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TIMESTAMP:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 847
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    const-string v1, "ID"

    const-string v2, "container_id"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->ID:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 848
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    const-string v1, "TITLE"

    const-string v2, "container_title"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TITLE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 849
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    const-string v1, "HIGH_RES"

    const-string v2, "high_res_container"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->HIGH_RES:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 850
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    const-string v1, "SUB_TITLE"

    const-string v2, "sub_title"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->SUB_TITLE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 851
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    const-string v1, "SUB_ID"

    const-string v2, "sub_id"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2, v10}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->SUB_ID:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    .line 852
    new-instance v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    const-string v1, "DATA"

    const-string v2, "data"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2, v11}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->DATA:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    const/16 v0, 0x9

    .line 842
    new-array v0, v0, [Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TYPE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->CONTAINER_URI:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TIMESTAMP:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->ID:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->TITLE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->HIGH_RES:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->SUB_TITLE:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->SUB_ID:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->DATA:Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    aput-object v1, v0, v11

    sput-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->$VALUES:[Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 857
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 858
    iput-object p3, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->mColumn:Ljava/lang/String;

    .line 859
    iput p4, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->mIndex:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;
    .locals 1

    .line 842
    const-class v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;
    .locals 1

    .line 842
    sget-object v0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->$VALUES:[Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;

    return-object v0
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->mColumn:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 867
    iget v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedColumns;->mIndex:I

    return v0
.end method
