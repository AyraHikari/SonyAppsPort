.class public Lcom/sonymobile/launcher/customization/DesktopCustomization;
.super Lcom/sonymobile/launcher/customization/ContainerCustomization;
.source "DesktopCustomization.java"


# static fields
.field private static final DEFAULT_NUMBER_OF_PAGES:I = 0x5

.field private static final GRID_SPAN_PATTERN:Ljava/util/regex/Pattern;

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field private static final MAX_NUMBER_OF_PAGES:I = 0x14

.field protected static final REMOVE_WIDGETS:Ljava/lang/String; = "remove-widgets"

.field private static final SUPPORTED_TAGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DesktopCustomization"

.field public static final WIDGETS:Ljava/lang/String; = "widgets"

.field public static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

.field private final mCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field protected final mColSpan:I

.field private mNumberOfPages:I

.field protected final mRowSpan:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 61
    const-string v0, "activities"

    const-string v1, "remove-activities"

    const-string v2, "widgets"

    const-string v3, "remove-widgets"

    const-string v4, "shortcuts"

    const-string v5, "remove-shortcuts"

    const-string v6, "folders"

    const-string v7, "remove-folders"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    .line 72
    const-string v0, "(\\d+)x(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->GRID_SPAN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/launcher/storage/Storage;Lcom/android/launcher3/widget/WidgetManagerHelper;Landroid/appwidget/AppWidgetHost;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/sonymobile/launcher/storage/Storage;
    .param p3, "appWidgetManager"    # Lcom/android/launcher3/widget/WidgetManagerHelper;
    .param p4, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/launcher/customization/ContainerCustomization;-><init>(Landroid/content/Context;Lcom/sonymobile/launcher/storage/Storage;)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    .line 106
    iput-object p3, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    .line 107
    iput-object p4, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 109
    sget v0, Lcom/android/launcher3/R$string;->customized_grid_size:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "customizedGridSpanString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 111
    .local v1, "overlayGridSpan":Landroid/util/Size;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    invoke-static {v0}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->parseGridSpan(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 115
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRussiaVariant(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mColSpan:I

    .line 119
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mRowSpan:I

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    .line 122
    .local v2, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    iget v3, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v3, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mColSpan:I

    .line 123
    iget v3, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v3, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mRowSpan:I

    .line 126
    .end local v2    # "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    :goto_0
    const/4 v2, 0x5

    iput v2, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mNumberOfPages:I

    .line 133
    return-void
.end method

.method private bindAppWidgetId(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Z
    .locals 4
    .param p1, "appWidgetPackage"    # Ljava/lang/String;
    .param p2, "appWidgetClassName"    # Ljava/lang/String;
    .param p3, "appWidgetId"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "result":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 235
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .local v1, "appWidgetProvider":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 238
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p3, p4, v1, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    .line 240
    .end local v1    # "appWidgetProvider":Landroid/content/ComponentName;
    .end local v2    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_0
    return v0
.end method

.method private static findWidgets(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;"
        }
    .end annotation

    .line 462
    .local p0, "model":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/launcher/data/Item;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v0, "foundItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/launcher/data/Item;

    .line 465
    .local v2, "item":Lcom/sonymobile/launcher/data/Item;
    instance-of v3, v2, Lcom/sonymobile/launcher/data/AppWidgetItem;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/sonymobile/launcher/data/PromiseWidgetItem;

    if-eqz v3, :cond_1

    .line 466
    :cond_0
    invoke-virtual {v2}, Lcom/sonymobile/launcher/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 467
    invoke-virtual {v2}, Lcom/sonymobile/launcher/data/Item;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 468
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    .end local v2    # "item":Lcom/sonymobile/launcher/data/Item;
    :cond_1
    goto :goto_0

    .line 473
    :cond_2
    return-object v0
.end method

.method private static parseGridSpan(Ljava/lang/String;)Landroid/util/Size;
    .locals 6
    .param p0, "gridSpanString"    # Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->GRID_SPAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 137
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 140
    .local v2, "numCols":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 141
    .local v3, "numRows":I
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v2, v3}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 142
    .end local v2    # "numCols":I
    .end local v3    # "numRows":I
    :catch_0
    move-exception v2

    .line 143
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Grid span parsing failed for \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "DesktopCustomization"

    invoke-static {v3, v1}, Lcom/sonymobile/launcher/util/Log;->w(Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    .end local v2    # "ignored":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private registerAppWidgetIdSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 7
    .param p1, "appWidgetPackage"    # Ljava/lang/String;
    .param p2, "appWidgetClassName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 204
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 205
    return v0

    .line 208
    :cond_0
    const/4 v1, 0x0

    .line 209
    .local v1, "retVal":I
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v2

    .line 211
    .local v2, "appWidgetId":I
    if-eqz v2, :cond_2

    .line 213
    :try_start_0
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->bindAppWidgetId(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    move v0, v2

    move v1, v0

    .end local v1    # "retVal":I
    .local v0, "retVal":I
    goto :goto_0

    .line 218
    .end local v0    # "retVal":I
    .restart local v1    # "retVal":I
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    goto :goto_1

    .line 220
    :catch_0
    move-exception v3

    .line 221
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 222
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to bind widget "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v0, "DesktopCustomization"

    invoke-static {v0, v4}, Lcom/sonymobile/launcher/util/Log;->w(Ljava/lang/String;[Ljava/lang/String;)I

    .line 225
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return v1
.end method

.method private registerAppWidgets()V
    .locals 8

    .line 173
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sonymobile/launcher/data/Item;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/launcher/data/Item;

    .line 175
    .local v1, "desktopItem":Lcom/sonymobile/launcher/data/Item;
    instance-of v2, v1, Lcom/sonymobile/launcher/data/AppWidgetItem;

    if-eqz v2, :cond_1

    .line 176
    move-object v2, v1

    check-cast v2, Lcom/sonymobile/launcher/data/AppWidgetItem;

    .line 178
    .local v2, "widgetItem":Lcom/sonymobile/launcher/data/AppWidgetItem;
    invoke-virtual {v2}, Lcom/sonymobile/launcher/data/AppWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonymobile/launcher/data/AppWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v2}, Lcom/sonymobile/launcher/data/AppWidgetItem;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 178
    invoke-direct {p0, v3, v4, v5}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->registerAppWidgetIdSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    .line 183
    .local v3, "widgetId":I
    if-eqz v3, :cond_0

    .line 184
    new-instance v4, Lcom/sonymobile/launcher/data/AppWidgetItem;

    .line 185
    invoke-virtual {v2}, Lcom/sonymobile/launcher/data/AppWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sonymobile/launcher/data/AppWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-virtual {v2}, Lcom/sonymobile/launcher/data/AppWidgetItem;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/sonymobile/launcher/data/AppWidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 187
    .local v4, "registeredWidget":Lcom/sonymobile/launcher/data/AppWidgetItem;
    invoke-virtual {v2}, Lcom/sonymobile/launcher/data/AppWidgetItem;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/launcher/data/AppWidgetItem;->setLocation(Lcom/sonymobile/launcher/data/ItemLocation;)V

    .line 188
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->getContainerId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/launcher/data/AppWidgetItem;->setContainerId(J)V

    .line 190
    invoke-interface {v0, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 194
    .end local v4    # "registeredWidget":Lcom/sonymobile/launcher/data/AppWidgetItem;
    goto :goto_1

    .line 196
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 199
    .end local v1    # "desktopItem":Lcom/sonymobile/launcher/data/Item;
    .end local v2    # "widgetItem":Lcom/sonymobile/launcher/data/AppWidgetItem;
    .end local v3    # "widgetId":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 200
    .end local v0    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sonymobile/launcher/data/Item;>;"
    :cond_2
    return-void
.end method

.method private static removeOverlappingItems(Ljava/util/ArrayList;Lcom/sonymobile/launcher/data/Item;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;",
            "Lcom/sonymobile/launcher/data/Item;",
            ")V"
        }
    .end annotation

    .line 483
    .local p0, "model":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 485
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/launcher/data/Item;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/launcher/data/Item;

    .line 488
    .local v1, "modelItem":Lcom/sonymobile/launcher/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/launcher/data/ItemLocation;->overlaps(Lcom/sonymobile/launcher/data/ItemLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 494
    .end local v1    # "modelItem":Lcom/sonymobile/launcher/data/Item;
    :cond_0
    goto :goto_0

    .line 495
    :cond_1
    return-void
.end method

.method private updateNumberOfPages()V
    .locals 5

    .line 265
    iget v0, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mNumberOfPages:I

    .line 266
    .local v0, "currentNumberOfPages":I
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/launcher/data/Item;

    .line 267
    .local v2, "desktopItem":Lcom/sonymobile/launcher/data/Item;
    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {v2}, Lcom/sonymobile/launcher/data/Item;->getLocation()Lcom/sonymobile/launcher/data/ItemLocation;

    move-result-object v3

    .line 269
    .local v3, "desktopItemLocation":Lcom/sonymobile/launcher/data/ItemLocation;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    if-lt v4, v0, :cond_0

    .line 270
    iget v4, v3, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    .line 273
    .end local v2    # "desktopItem":Lcom/sonymobile/launcher/data/Item;
    .end local v3    # "desktopItemLocation":Lcom/sonymobile/launcher/data/ItemLocation;
    :cond_0
    goto :goto_0

    .line 274
    :cond_1
    iput v0, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mNumberOfPages:I

    .line 275
    return-void
.end method


# virtual methods
.method protected addAppWidget(Ljava/lang/String;Ljava/lang/String;IIIII)Z
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 397
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 398
    .local v3, "widgetItem":Lcom/sonymobile/launcher/data/Item;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .local v4, "widgetComponent":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 400
    .local v5, "providerInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    iget-boolean v6, v0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mCheckIfInstalled:Z

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    if-eqz v6, :cond_0

    .line 401
    iget-object v7, v0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mMainUser:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v5

    .line 403
    :cond_0
    iget-boolean v6, v0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mCheckIfInstalled:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    .line 410
    :cond_1
    new-instance v6, Lcom/android/launcher3/util/PackageUserKey;

    .line 411
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v6, p1, v8}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 412
    .local v6, "installingPkgKey":Lcom/android/launcher3/util/PackageUserKey;
    sget-object v8, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v9, v0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mContext:Landroid/content/Context;

    .line 413
    invoke-virtual {v8, v9}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {v8}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v8

    .line 414
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 415
    .local v8, "installSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v8, :cond_3

    .line 416
    new-instance v9, Lcom/sonymobile/launcher/data/PromiseWidgetItem;

    invoke-direct {v9, p1, v2}, Lcom/sonymobile/launcher/data/PromiseWidgetItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v9

    goto :goto_1

    .line 408
    .end local v6    # "installingPkgKey":Lcom/android/launcher3/util/PackageUserKey;
    .end local v8    # "installSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_2
    :goto_0
    new-instance v6, Lcom/sonymobile/launcher/data/AppWidgetItem;

    iget-object v8, v0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mMainUser:Landroid/os/UserHandle;

    invoke-direct {v6, v7, p1, v2, v8}, Lcom/sonymobile/launcher/data/AppWidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object v3, v6

    .line 421
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 422
    new-instance v6, Lcom/sonymobile/launcher/data/ItemLocation;

    move-object v8, v6

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-direct/range {v8 .. v13}, Lcom/sonymobile/launcher/data/ItemLocation;-><init>(IIIII)V

    .line 423
    .local v6, "location":Lcom/sonymobile/launcher/data/ItemLocation;
    invoke-virtual {v3, v6}, Lcom/sonymobile/launcher/data/Item;->setLocation(Lcom/sonymobile/launcher/data/ItemLocation;)V

    .line 424
    invoke-virtual {p0}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->getContainerId()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/sonymobile/launcher/data/Item;->setContainerId(J)V

    .line 427
    invoke-virtual {p0, v3}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->addItem(Lcom/sonymobile/launcher/data/Item;)Z

    move-result v7

    return v7

    .line 434
    .end local v6    # "location":Lcom/sonymobile/launcher/data/ItemLocation;
    :cond_4
    return v7
.end method

.method public applyCustomization()Z
    .locals 2

    .line 153
    invoke-super {p0}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->applyCustomization()Z

    move-result v0

    .line 154
    .local v0, "success":Z
    iget-boolean v1, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mCheckIfInstalled:Z

    if-eqz v1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->registerAppWidgets()V

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->updateNumberOfPages()V

    .line 158
    return v0
.end method

.method protected createAutoInstallGooglePlayConfigParser(Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;)Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
    .locals 3
    .param p1, "parseListener"    # Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;

    .line 165
    nop

    .line 166
    invoke-super {p0, p1}, Lcom/sonymobile/launcher/customization/ContainerCustomization;->createAutoInstallGooglePlayConfigParser(Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;)Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    move-result-object v0

    .line 167
    .local v0, "autoInstallGooglePlayConfigParser":Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
    invoke-virtual {v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->enablePositionRestrictions()V

    .line 168
    iget v1, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mRowSpan:I

    iget v2, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mColSpan:I

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->setDesktopSize(II)V

    .line 169
    return-object v0
.end method

.method public getColSpan()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mColSpan:I

    return v0
.end method

.method protected getContainerId()J
    .locals 2

    .line 358
    const-wide/16 v0, -0x64

    return-wide v0
.end method

.method protected getCustomSettingsResource()Landroid/content/res/XmlResourceParser;
    .locals 1

    .line 379
    sget v0, Lcom/android/launcher3/R$xml;->custom_settings_desktop:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->getXmlResource(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultResource()Landroid/content/res/XmlResourceParser;
    .locals 1

    .line 374
    sget v0, Lcom/android/launcher3/R$xml;->default_settings_desktop:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->getXmlResource(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mNumberOfPages:I

    return v0
.end method

.method public getRowSpan()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mRowSpan:I

    return v0
.end method

.method protected handleKey(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 18
    .param p1, "groupType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 319
    .local p2, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "widgets"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "name"

    const-string v5, "package-name"

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 321
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/sonymobile/launcher/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "className":Ljava/lang/String;
    const-string v5, "pane"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 324
    .local v5, "pane":I
    const-string v7, "x"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 325
    .local v15, "x":I
    const-string v7, "y"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v16

    .line 326
    .local v16, "y":I
    const-string v7, "width"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v17

    .line 327
    .local v17, "width":I
    const-string v7, "height"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/sonymobile/launcher/util/StringUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 334
    .local v6, "height":I
    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v4

    move v10, v5

    move v11, v15

    move/from16 v12, v16

    move/from16 v13, v17

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->addAppWidget(Ljava/lang/String;Ljava/lang/String;IIIII)Z

    .line 335
    return v3

    .line 336
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "pane":I
    .end local v6    # "height":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    .end local v17    # "width":I
    :cond_0
    const-string v2, "remove-widgets"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 338
    .restart local v2    # "packageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/sonymobile/launcher/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    .restart local v4    # "className":Ljava/lang/String;
    move-object/from16 v5, p0

    invoke-virtual {v5, v2, v4}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->removeAppWidget(Ljava/lang/String;Ljava/lang/String;)Z

    .line 346
    return v3

    .line 353
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    :cond_1
    move-object/from16 v5, p0

    return v6
.end method

.method protected isWithinBounds(Lcom/sonymobile/launcher/data/ItemLocation;)Z
    .locals 3
    .param p1, "location"    # Lcom/sonymobile/launcher/data/ItemLocation;

    .line 245
    iget-object v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    iget-object v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    if-ltz v0, :cond_0

    iget-object v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/launcher/grid/GridRect;->row:I

    iget-object v2, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/launcher/grid/GridRect;->rowSpan:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mRowSpan:I

    if-gt v0, v2, :cond_0

    iget-object v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v0, v0, Lcom/sonymobile/launcher/grid/GridRect;->col:I

    iget-object v2, p1, Lcom/sonymobile/launcher/data/ItemLocation;->grid:Lcom/sonymobile/launcher/grid/GridRect;

    iget v2, v2, Lcom/sonymobile/launcher/grid/GridRect;->colSpan:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mColSpan:I

    if-gt v0, v2, :cond_0

    iget v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/sonymobile/launcher/data/ItemLocation;->page:I

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onAddItem(Lcom/sonymobile/launcher/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 302
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method protected onRemoveItem(Lcom/sonymobile/launcher/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 308
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected removeAppWidget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->findWidgets(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 447
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/launcher/data/Item;

    .line 448
    .local v2, "widgetItem":Lcom/sonymobile/launcher/data/Item;
    invoke-virtual {p0, v2}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->removeItem(Lcom/sonymobile/launcher/data/Item;)Z

    .line 449
    .end local v2    # "widgetItem":Lcom/sonymobile/launcher/data/Item;
    goto :goto_0

    .line 450
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method protected removeOverlappingItems(Lcom/sonymobile/launcher/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/launcher/data/Item;

    .line 297
    iget-object v0, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mCache:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/sonymobile/launcher/customization/DesktopCustomization;->removeOverlappingItems(Ljava/util/ArrayList;Lcom/sonymobile/launcher/data/Item;)V

    .line 298
    return-void
.end method

.method protected store(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/launcher/data/Item;",
            ">;)V"
        }
    .end annotation

    .line 285
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 286
    .local v0, "failedItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/launcher/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mStorage:Lcom/sonymobile/launcher/storage/Storage;

    invoke-interface {v1, p1, v0}, Lcom/sonymobile/launcher/storage/Storage;->insertItems(Ljava/util/List;Ljava/util/List;)V

    .line 288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/launcher/data/Item;

    .line 289
    .local v2, "failedItem":Lcom/sonymobile/launcher/data/Item;
    instance-of v3, v2, Lcom/sonymobile/launcher/data/AppWidgetItem;

    if-eqz v3, :cond_0

    .line 290
    iget-object v3, p0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    move-object v4, v2

    check-cast v4, Lcom/sonymobile/launcher/data/AppWidgetItem;

    invoke-virtual {v4}, Lcom/sonymobile/launcher/data/AppWidgetItem;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 292
    .end local v2    # "failedItem":Lcom/sonymobile/launcher/data/Item;
    :cond_0
    goto :goto_0

    .line 293
    :cond_1
    return-void
.end method

.method protected supportsGooglePlayContainer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "containerId"    # Ljava/lang/String;

    .line 368
    if-eqz p1, :cond_1

    .line 369
    const-string v0, "desktop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 368
    :goto_1
    return v0
.end method

.method protected supportsGroup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "groupType"    # Ljava/lang/String;

    .line 363
    sget-object v0, Lcom/sonymobile/launcher/customization/DesktopCustomization;->SUPPORTED_TAGS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sonymobile/launcher/util/HomeUtils;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
