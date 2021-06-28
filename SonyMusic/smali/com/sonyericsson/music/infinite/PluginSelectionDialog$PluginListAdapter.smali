.class Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PluginSelectionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/infinite/PluginSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginListAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPluginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/infinite/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/music/infinite/PluginSelectionDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/infinite/PluginSelectionDialog;Landroid/content/Context;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->this$0:Lcom/sonyericsson/music/infinite/PluginSelectionDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 225
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->mPluginList:Ljava/util/ArrayList;

    .line 228
    iput-object p2, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->swapData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->updatePluginDescription(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestDescriptions()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$DescriptionUpdatedReceiver;

    iget-object v2, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->this$0:Lcom/sonyericsson/music/infinite/PluginSelectionDialog;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$DescriptionUpdatedReceiver;-><init>(Lcom/sonyericsson/music/infinite/PluginSelectionDialog;Lcom/sonyericsson/music/infinite/PluginSelectionDialog$1;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/music/infinite/PluginPackageHelper;->sendDescriptionRequestToAllPlugins(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private swapData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/infinite/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->mPluginList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->mPluginList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 268
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 270
    invoke-direct {p0}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->requestDescriptions()V

    return-void
.end method

.method private updatePluginDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->mPluginList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/infinite/PluginInfo;

    .line 275
    invoke-virtual {v1}, Lcom/sonyericsson/music/infinite/PluginInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/infinite/PluginInfo;->updateDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->mPluginList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/music/infinite/PluginInfo;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->mPluginList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/infinite/PluginInfo;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 221
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->getItem(I)Lcom/sonyericsson/music/infinite/PluginInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 251
    iget-object p2, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->mContext:Landroid/content/Context;

    const p3, 0x7f0c0048

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0900db

    .line 254
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->mPluginList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/infinite/PluginInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/infinite/PluginInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const p3, 0x7f0901fa

    .line 257
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->mPluginList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/infinite/PluginInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/music/infinite/PluginInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
