.class public final enum Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;
.super Ljava/lang/Enum;
.source "StatsLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LatencyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum COLD:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum COLD_USERWAITING:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum FAIL:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum HOT:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum TIMEOUT:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

.field public static final enum UNKNOWN:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 742
    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->UNKNOWN:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    .line 743
    new-instance v1, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v3, "COLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->COLD:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    .line 744
    new-instance v3, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v5, "HOT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->HOT:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    .line 745
    new-instance v5, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v7, "TIMEOUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->TIMEOUT:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    .line 746
    new-instance v7, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v9, "FAIL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->FAIL:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    .line 747
    new-instance v9, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    const-string v11, "COLD_USERWAITING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->COLD_USERWAITING:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    .line 741
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 751
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 752
    iput p3, p0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->mId:I

    .line 753
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 741
    const-class v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;
    .locals 1

    .line 741
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {v0}, [Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 756
    iget v0, p0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->mId:I

    return v0
.end method
