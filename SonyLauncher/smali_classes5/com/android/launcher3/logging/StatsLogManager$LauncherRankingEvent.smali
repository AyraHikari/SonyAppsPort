.class public final enum Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;
.super Ljava/lang/Enum;
.source "StatsLogManager.java"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logging/StatsLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LauncherRankingEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;",
        ">;",
        "Lcom/android/launcher3/logging/StatsLogManager$EventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

.field public static final enum UNKNOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 622
    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;->UNKNOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    .line 620
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

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

    .line 627
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 628
    iput p3, p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;->mId:I

    .line 629
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 620
    const-class v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;
    .locals 1

    .line 620
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    invoke-virtual {v0}, [Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 632
    iget v0, p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;->mId:I

    return v0
.end method
