.class Lcom/airbnb/lottie/LottieDrawable$7;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic val$maxProgress:F


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/lottie/LottieDrawable;

    .line 518
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$7;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$7;->val$maxProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 521
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$7;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable$7;->val$maxProgress:F

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    .line 522
    return-void
.end method
