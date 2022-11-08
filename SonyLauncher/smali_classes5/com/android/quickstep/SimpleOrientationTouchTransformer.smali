.class public Lcom/android/quickstep/SimpleOrientationTouchTransformer;
.super Ljava/lang/Object;
.source "SimpleOrientationTouchTransformer.java"

# interfaces
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/SimpleOrientationTouchTransformer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOrientationRectF:Lcom/android/quickstep/OrientationRectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/quickstep/SimpleOrientationTouchTransformer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/quickstep/SimpleOrientationTouchTransformer$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    .line 38
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "flags"    # I

    .line 44
    and-int/lit8 v0, p3, 0x3

    if-nez v0, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/android/quickstep/OrientationRectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p2, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v1

    iget-object v1, p2, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v1

    iget v6, p2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/OrientationRectF;-><init>(FFFFI)V

    iput-object v0, p0, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->mOrientationRectF:Lcom/android/quickstep/OrientationRectF;

    .line 49
    return-void
.end method

.method public transform(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "rotation"    # I

    .line 52
    iget-object v0, p0, Lcom/android/quickstep/SimpleOrientationTouchTransformer;->mOrientationRectF:Lcom/android/quickstep/OrientationRectF;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/quickstep/OrientationRectF;->applyTransformToRotation(Landroid/view/MotionEvent;IZ)Z

    .line 53
    return-void
.end method
