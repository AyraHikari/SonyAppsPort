.class public Lcom/android/launcher3/util/PendingRequestArgs;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "PendingRequestArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/util/PendingRequestArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_APP_WIDGET:I = 0x2

.field private static final TYPE_INTENT:I = 0x1

.field private static final TYPE_NONE:I


# instance fields
.field private final mArg1:I

.field private final mArg2:I

.field private final mObject:Landroid/os/Parcelable;

.field private final mObjectType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/android/launcher3/util/PendingRequestArgs$1;

    invoke-direct {v0}, Lcom/android/launcher3/util/PendingRequestArgs$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/PendingRequestArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILandroid/os/Parcelable;)V
    .locals 0
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "objectType"    # I
    .param p4, "object"    # Landroid/os/Parcelable;

    .line 56
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 57
    iput p1, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    .line 58
    iput p2, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg2:I

    .line 59
    iput p3, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    .line 60
    iput-object p4, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    .line 61
    return-void
.end method

.method private constructor <init>(IILandroid/os/Parcelable;)V
    .locals 1
    .param p1, "arg1"    # I
    .param p2, "objectType"    # I
    .param p3, "object"    # Landroid/os/Parcelable;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(IIILandroid/os/Parcelable;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 64
    sget-object v0, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/PendingRequestArgs;->readFromValues(Landroid/content/ContentValues;)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->user:Landroid/os/UserHandle;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg2:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 43
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    .line 45
    iput v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg2:I

    .line 46
    iput v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/PendingRequestArgs;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 50
    return-void
.end method

.method public static forIntent(ILandroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 125
    new-instance v0, Lcom/android/launcher3/util/PendingRequestArgs;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(IILandroid/os/Parcelable;)V

    .line 126
    .local v0, "args":Lcom/android/launcher3/util/PendingRequestArgs;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/util/PendingRequestArgs;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 127
    return-object v0
.end method

.method public static forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;
    .locals 3
    .param p0, "appWidgetId"    # I
    .param p1, "widgetHandler"    # Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 113
    const/4 v0, -0x1

    .line 114
    .local v0, "sourceContainer":I
    instance-of v1, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v1, :cond_0

    .line 115
    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v0, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->sourceContainer:I

    .line 117
    :cond_0
    new-instance v1, Lcom/android/launcher3/util/PendingRequestArgs;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(IIILandroid/os/Parcelable;)V

    .line 120
    .local v1, "args":Lcom/android/launcher3/util/PendingRequestArgs;
    invoke-virtual {v1, p2}, Lcom/android/launcher3/util/PendingRequestArgs;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 121
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getPendingIntent()Landroid/content/Intent;
    .locals 2

    .line 104
    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    check-cast v0, Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRequestCode()I
    .locals 2

    .line 108
    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    .locals 2

    .line 92
    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    check-cast v0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getWidgetId()I
    .locals 2

    .line 96
    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWidgetSourceContainer()I
    .locals 2

    .line 100
    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg2:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v0, "itemValues":Landroid/content/ContentValues;
    new-instance v1, Lcom/android/launcher3/util/ContentWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/ContentValues;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/PendingRequestArgs;->writeToValues(Lcom/android/launcher3/util/ContentWriter;)V

    .line 82
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    iget-object v1, p0, Lcom/android/launcher3/util/PendingRequestArgs;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    iget v1, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v1, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mArg2:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v1, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v1, p0, Lcom/android/launcher3/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    return-void
.end method
