.class public final enum Lcom/sonyericsson/music/common/VersionUtils$AppBuild;
.super Ljava/lang/Enum;
.source "VersionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/VersionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppBuild"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/VersionUtils$AppBuild;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

.field public static final enum ALPHA:Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

.field public static final enum BETA:Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

.field public static final enum PRODUCTION:Lcom/sonyericsson/music/common/VersionUtils$AppBuild;


# instance fields
.field private final mValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    const-string v1, "PRODUCTION"

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    invoke-direct {v0, v1, v4, v3}, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->PRODUCTION:Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    new-instance v0, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    const-string v1, "BETA"

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->BETA:Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    new-instance v0, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    const-string v1, "ALPHA"

    const/4 v3, 0x3

    new-array v5, v3, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v5}, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->ALPHA:Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    .line 20
    new-array v0, v3, [Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    sget-object v1, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->PRODUCTION:Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->BETA:Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->ALPHA:Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->$VALUES:[Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->mValue:[I

    return-void
.end method

.method static getAppBuild(I)Lcom/sonyericsson/music/common/VersionUtils$AppBuild;
    .locals 9

    .line 30
    invoke-static {}, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->values()[Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 31
    iget-object v5, v4, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->mValue:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    if-ne v8, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/VersionUtils$AppBuild;
    .locals 1

    .line 20
    const-class v0, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/VersionUtils$AppBuild;
    .locals 1

    .line 20
    sget-object v0, Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->$VALUES:[Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/VersionUtils$AppBuild;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/VersionUtils$AppBuild;

    return-object v0
.end method
