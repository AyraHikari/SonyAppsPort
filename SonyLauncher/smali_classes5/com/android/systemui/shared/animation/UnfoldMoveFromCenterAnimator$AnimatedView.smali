.class final Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;
.super Ljava/lang/Object;
.source "UnfoldMoveFromCenterAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimatedView"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000b\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;",
        "",
        "view",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/view/View;",
        "startTranslationX",
        "",
        "startTranslationY",
        "(Ljava/lang/ref/WeakReference;FF)V",
        "getStartTranslationX",
        "()F",
        "setStartTranslationX",
        "(F)V",
        "getStartTranslationY",
        "setStartTranslationY",
        "getView",
        "()Ljava/lang/ref/WeakReference;",
        "frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private startTranslationX:F

.field private startTranslationY:F

.field private final view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;FF)V
    .locals 1
    .param p1, "view"    # Ljava/lang/ref/WeakReference;
    .param p2, "startTranslationX"    # F
    .param p3, "startTranslationY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;FF)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;->view:Ljava/lang/ref/WeakReference;

    .line 189
    iput p2, p0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;->startTranslationX:F

    .line 190
    iput p3, p0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;->startTranslationY:F

    .line 187
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 187
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 189
    move p2, v0

    .line 187
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 190
    move p3, v0

    .line 187
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;-><init>(Ljava/lang/ref/WeakReference;FF)V

    .line 191
    return-void
.end method


# virtual methods
.method public final getStartTranslationX()F
    .locals 1

    .line 189
    iget v0, p0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;->startTranslationX:F

    return v0
.end method

.method public final getStartTranslationY()F
    .locals 1

    .line 190
    iget v0, p0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;->startTranslationY:F

    return v0
.end method

.method public final getView()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;->view:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final setStartTranslationX(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 189
    iput p1, p0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;->startTranslationX:F

    return-void
.end method

.method public final setStartTranslationY(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 190
    iput p1, p0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;->startTranslationY:F

    return-void
.end method
