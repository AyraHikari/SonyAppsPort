.class Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$OpenPersonalDataCollectionDialogTask;
.super Landroid/os/AsyncTask;
.source "PersonalDataCollectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenPersonalDataCollectionDialogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 249
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 250
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$OpenPersonalDataCollectionDialogTask;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;
    .locals 0

    .line 255
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$OpenPersonalDataCollectionDialogTask;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 257
    invoke-static {p1}, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices;->getIds(Landroid/content/Context;)Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 245
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$OpenPersonalDataCollectionDialogTask;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;)V
    .locals 2

    .line 265
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$OpenPersonalDataCollectionDialogTask;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p1, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;->xperiaId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;->newInstance(Ljava/lang/String;)Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionDialog;

    move-result-object p1

    .line 270
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "personal_data_collection_dialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 245
    check-cast p1, Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/datacollection/dataplatform/PersonalDataCollectionActivity$OpenPersonalDataCollectionDialogTask;->onPostExecute(Lcom/sonyericsson/music/datacollection/dataplatform/XperiaServices$XperiaIds;)V

    return-void
.end method
