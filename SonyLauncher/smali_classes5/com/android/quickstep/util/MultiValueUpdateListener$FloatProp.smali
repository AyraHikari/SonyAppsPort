.class public final Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
.super Ljava/lang/Object;
.source "MultiValueUpdateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/MultiValueUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FloatProp"
.end annotation


# instance fields
.field private final mDelay:F

.field private final mDuration:F

.field private final mEnd:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mStart:F

.field final synthetic this$0:Lcom/android/quickstep/util/MultiValueUpdateListener;

.field public value:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmDelay(Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->mDelay:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDuration(Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->mDuration:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnd(Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->mEnd:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterpolator(Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStart(Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->mStart:F

    return p0
.end method

.method public constructor <init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/quickstep/util/MultiValueUpdateListener;
    .param p2, "start"    # F
    .param p3, "end"    # F
    .param p4, "delay"    # F
    .param p5, "duration"    # F
    .param p6, "i"    # Landroid/view/animation/Interpolator;

    .line 62
    iput-object p1, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->this$0:Lcom/android/quickstep/util/MultiValueUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p2, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->mStart:F

    iput p2, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    .line 64
    iput p3, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->mEnd:F

    .line 65
    iput p4, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->mDelay:F

    .line 66
    iput p5, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->mDuration:F

    .line 67
    iput-object p6, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 69
    invoke-static {p1}, Lcom/android/quickstep/util/MultiValueUpdateListener;->-$$Nest$fgetmAllProperties(Lcom/android/quickstep/util/MultiValueUpdateListener;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method


# virtual methods
.method public getStartValue()F
    .locals 1

    .line 76
    iget v0, p0, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->mStart:F

    return v0
.end method
