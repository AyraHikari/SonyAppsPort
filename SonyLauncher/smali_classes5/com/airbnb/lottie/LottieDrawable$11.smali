.class Lcom/airbnb/lottie/LottieDrawable$11;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic val$endMarkerName:Ljava/lang/String;

.field final synthetic val$playEndMarkerStartFrame:Z

.field final synthetic val$startMarkerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/lottie/LottieDrawable;

    .line 604
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$11;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieDrawable$11;->val$startMarkerName:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/lottie/LottieDrawable$11;->val$endMarkerName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/airbnb/lottie/LottieDrawable$11;->val$playEndMarkerStartFrame:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 4
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 607
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$11;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$11;->val$startMarkerName:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable$11;->val$endMarkerName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/airbnb/lottie/LottieDrawable$11;->val$playEndMarkerStartFrame:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 608
    return-void
.end method
