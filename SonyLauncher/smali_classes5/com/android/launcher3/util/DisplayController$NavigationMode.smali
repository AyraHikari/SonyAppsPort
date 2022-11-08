.class public final enum Lcom/android/launcher3/util/DisplayController$NavigationMode;
.super Ljava/lang/Enum;
.source "DisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/DisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/util/DisplayController$NavigationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field public static final enum NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field public static final enum THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field public static final enum TWO_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;


# instance fields
.field public final hasGestures:Z

.field public final launcherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field public final resValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 419
    new-instance v6, Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NAVIGATION_MODE_3_BUTTON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v1, "THREE_BUTTONS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/DisplayController$NavigationMode;-><init>(Ljava/lang/String;IZILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    sput-object v6, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 420
    new-instance v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v12, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NAVIGATION_MODE_2_BUTTON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v8, "TWO_BUTTONS"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/launcher3/util/DisplayController$NavigationMode;-><init>(Ljava/lang/String;IZILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    sput-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 421
    new-instance v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v18, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NAVIGATION_MODE_GESTURE_BUTTON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const-string v14, "NO_BUTTON"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/launcher3/util/DisplayController$NavigationMode;-><init>(Ljava/lang/String;IZILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    sput-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 418
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/launcher3/util/DisplayController$NavigationMode;

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->$VALUES:[Lcom/android/launcher3/util/DisplayController$NavigationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZILcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V
    .locals 0
    .param p3, "hasGestures"    # Z
    .param p4, "resValue"    # I
    .param p5, "launcherEvent"    # Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;",
            ")V"
        }
    .end annotation

    .line 427
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 428
    iput-boolean p3, p0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    .line 429
    iput p4, p0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->resValue:I

    .line 430
    iput-object p5, p0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->launcherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 431
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 418
    const-class v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .locals 1

    .line 418
    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->$VALUES:[Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-virtual {v0}, [Lcom/android/launcher3/util/DisplayController$NavigationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/util/DisplayController$NavigationMode;

    return-object v0
.end method
