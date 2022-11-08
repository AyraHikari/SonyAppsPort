.class Lcom/android/quickstep/views/DigitalWellBeingToast$1;
.super Landroid/view/ViewOutlineProvider;
.source "DigitalWellBeingToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/DigitalWellBeingToast;->setBannerOutline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/DigitalWellBeingToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/views/DigitalWellBeingToast;

    .line 335
    iput-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast$1;->this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 338
    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast$1;->this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-static {v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->-$$Nest$fgetmOldBannerOutlineProvider(Lcom/android/quickstep/views/DigitalWellBeingToast;)Landroid/view/ViewOutlineProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast$1;->this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-static {v1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->-$$Nest$fgetmModalOffset(Lcom/android/quickstep/views/DigitalWellBeingToast;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast$1;->this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-static {v1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->-$$Nest$fgetmSplitOffsetTranslationY(Lcom/android/quickstep/views/DigitalWellBeingToast;)F

    move-result v1

    add-float/2addr v0, v1

    .line 341
    .local v0, "verticalTranslation":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Outline;->offset(II)V

    .line 342
    return-void
.end method
