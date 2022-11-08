.class Lcom/airbnb/lottie/LottieDrawable$2;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/lottie/LottieDrawable;

    .line 402
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$2;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 405
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$2;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    .line 406
    return-void
.end method
