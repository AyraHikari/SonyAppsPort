.class public Lcom/android/launcher3/proxy/StartActivityParams;
.super Ljava/lang/Object;
.source "StartActivityParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/launcher3/proxy/StartActivityParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "StartActivityParams"


# instance fields
.field public extraFlags:I

.field public fillInIntent:Landroid/content/Intent;

.field public flagsMask:I

.field public flagsValues:I

.field public intent:Landroid/content/Intent;

.field public intentSender:Landroid/content/IntentSender;

.field private final mPICallback:Landroid/app/PendingIntent;

.field public options:Landroid/os/Bundle;

.field public final requestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lcom/android/launcher3/proxy/StartActivityParams$1;

    invoke-direct {v0}, Lcom/android/launcher3/proxy/StartActivityParams$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/proxy/StartActivityParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x4a000000    # 2097152.0f

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/proxy/StartActivityParams;-><init>(Landroid/app/PendingIntent;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;I)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "requestCode"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/proxy/StartActivityParams;->mPICallback:Landroid/app/PendingIntent;

    .line 57
    iput p2, p0, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->mPICallback:Landroid/app/PendingIntent;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    .line 63
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->intent:Landroid/content/Intent;

    .line 65
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    iput-object v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->intentSender:Landroid/content/IntentSender;

    .line 66
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->fillInIntent:Landroid/content/Intent;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->flagsMask:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->flagsValues:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->extraFlags:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/launcher3/proxy/StartActivityParams-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/proxy/StartActivityParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->mPICallback:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "StartActivityParams"

    const-string v2, "Unable to send back result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->mPICallback:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 82
    iget v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->requestCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->intentSender:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 87
    iget v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->flagsMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->flagsValues:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->extraFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/proxy/StartActivityParams;->options:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method
