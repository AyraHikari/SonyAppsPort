.class public final Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$2;
.super Ljava/lang/Object;
.source "UnfoldMoveFromCenterAnimator.kt"

# interfaces
.implements Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$ViewCenterProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;-><init>(Landroid/view/WindowManager;Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$TranslationApplier;Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$ViewCenterProvider;Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AlphaProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$2",
        "Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$ViewCenterProvider;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewCenter(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outPoint"    # Landroid/graphics/Point;

    .line 45
    move-object v0, p0

    check-cast v0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$ViewCenterProvider;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$ViewCenterProvider$DefaultImpls;->getViewCenter(Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$ViewCenterProvider;Landroid/view/View;Landroid/graphics/Point;)V

    return-void
.end method
