.class Lcom/airbnb/lottie/model/layer/TextLayer$2;
.super Landroid/graphics/Paint;
.source "TextLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/layer/TextLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/model/layer/TextLayer;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/airbnb/lottie/model/layer/TextLayer;
    .param p2, "arg0"    # I

    .line 44
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer$2;->this$0:Lcom/airbnb/lottie/model/layer/TextLayer;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 45
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/TextLayer$2;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    return-void
.end method
