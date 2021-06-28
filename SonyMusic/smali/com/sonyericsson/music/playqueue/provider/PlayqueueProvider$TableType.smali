.class final enum Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;
.super Ljava/lang/Enum;
.source "PlayqueueProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

.field public static final enum CACHE_INSERT_MAP:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

.field public static final enum INSERTS:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

.field public static final enum MEMCACHE:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 160
    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    const-string v1, "MEMCACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;->MEMCACHE:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    const-string v1, "INSERTS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;->INSERTS:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    const-string v1, "CACHE_INSERT_MAP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;->CACHE_INSERT_MAP:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    const/4 v0, 0x3

    .line 159
    new-array v0, v0, [Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    sget-object v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;->MEMCACHE:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;->INSERTS:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;->CACHE_INSERT_MAP:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;->$VALUES:[Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;
    .locals 1

    .line 159
    const-class v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;
    .locals 1

    .line 159
    sget-object v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;->$VALUES:[Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    return-object v0
.end method
