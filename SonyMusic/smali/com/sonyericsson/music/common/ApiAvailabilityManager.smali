.class public Lcom/sonyericsson/music/common/ApiAvailabilityManager;
.super Ljava/lang/Object;
.source "ApiAvailabilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;
    }
.end annotation


# static fields
.field private static final TYPE_CLASS:I = 0x0

.field private static final TYPE_METHOD:I = 0x2

.field private static final TYPE_RES:I = 0x1

.field private static final sApis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->sApis:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doLookup(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z
    .locals 3

    .line 156
    invoke-static {p0}, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->access$000(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z

    move-result v0

    .line 157
    sget-object v1, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->sApis:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public static isApiAvailable(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z
    .locals 1

    .line 146
    sget-object v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->sApis:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 149
    invoke-static {p0}, Lcom/sonyericsson/music/common/ApiAvailabilityManager;->doLookup(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z

    move-result p0

    return p0

    .line 151
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
