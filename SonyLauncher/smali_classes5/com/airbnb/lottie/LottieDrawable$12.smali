.class Lcom/airbnb/lottie/LottieDrawable$12;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic val$maxFrame:I

.field final synthetic val$minFrame:I


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/lottie/LottieDrawable;

    .line 633
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$12;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$12;->val$minFrame:I

    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$12;->val$maxFrame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 636
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$12;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable$12;->val$minFrame:I

    iget v2, p0, Lcom/airbnb/lottie/LottieDrawable$12;->val$maxFrame:I

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    .line 637
    return-void
.end method
