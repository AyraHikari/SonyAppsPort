.class Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$1;
.super Landroid/text/style/ClickableSpan;
.source "PersonalDataCollectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;->createClickableText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;

.field final synthetic val$span:Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;Landroid/text/style/URLSpan;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$1;->this$0:Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;

    iput-object p2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$1;->val$span:Landroid/text/style/URLSpan;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 191
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$1;->val$span:Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    const-string v0, "entrance://personaldata"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    new-instance p1, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$OpenPersonalDataCollectionDialogTask;

    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$1;->this$0:Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$OpenPersonalDataCollectionDialogTask;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 193
    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
