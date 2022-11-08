.class Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;
.super Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/QuickstepTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartingWindowListener"
.end annotation


# instance fields
.field private mTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1843
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskLaunching(III)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "supportedType"    # I
    .param p3, "color"    # I

    .line 1852
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->mTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-static {v0}, Lcom/android/launcher3/QuickstepTransitionManager;->-$$Nest$fgetmTaskStartParams(Lcom/android/launcher3/QuickstepTransitionManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    return-void
.end method

.method public setTransitionManager(Lcom/android/launcher3/QuickstepTransitionManager;)V
    .locals 0
    .param p1, "transitionManager"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 1847
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;->mTransitionManager:Lcom/android/launcher3/QuickstepTransitionManager;

    .line 1848
    return-void
.end method
