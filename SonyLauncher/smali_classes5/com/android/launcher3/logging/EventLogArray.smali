.class public Lcom/android/launcher3/logging/EventLogArray;
.super Ljava/lang/Object;
.source "EventLogArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/logging/EventLogArray$EventEntry;
    }
.end annotation


# static fields
.field private static final TYPE_BOOL_FALSE:I = 0x4

.field private static final TYPE_BOOL_TRUE:I = 0x3

.field private static final TYPE_FLOAT:I = 0x1

.field private static final TYPE_INTEGER:I = 0x2

.field private static final TYPE_ONE_OFF:I


# instance fields
.field private final logs:[Lcom/android/launcher3/logging/EventLogArray$EventEntry;

.field private mLogId:I

.field private final name:Ljava/lang/String;

.field private nextIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/launcher3/logging/EventLogArray;->name:Ljava/lang/String;

    .line 46
    new-array v0, p2, [Lcom/android/launcher3/logging/EventLogArray$EventEntry;

    iput-object v0, p0, Lcom/android/launcher3/logging/EventLogArray;->logs:[Lcom/android/launcher3/logging/EventLogArray$EventEntry;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/logging/EventLogArray;->nextIndex:I

    .line 48
    return-void
.end method

.method private addLog(ILjava/lang/String;F)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # F

    .line 64
    iget v0, p0, Lcom/android/launcher3/logging/EventLogArray;->nextIndex:I

    iget-object v1, p0, Lcom/android/launcher3/logging/EventLogArray;->logs:[Lcom/android/launcher3/logging/EventLogArray$EventEntry;

    array-length v2, v1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    array-length v3, v1

    rem-int/2addr v2, v3

    .line 65
    .local v2, "last":I
    array-length v3, v1

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    array-length v3, v1

    rem-int/2addr v0, v3

    .line 66
    .local v0, "secondLast":I
    aget-object v1, v1, v2

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher3/logging/EventLogArray;->isEntrySame(Lcom/android/launcher3/logging/EventLogArray$EventEntry;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/logging/EventLogArray;->logs:[Lcom/android/launcher3/logging/EventLogArray$EventEntry;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher3/logging/EventLogArray;->isEntrySame(Lcom/android/launcher3/logging/EventLogArray$EventEntry;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/launcher3/logging/EventLogArray;->logs:[Lcom/android/launcher3/logging/EventLogArray$EventEntry;

    aget-object v1, v1, v2

    iget v3, p0, Lcom/android/launcher3/logging/EventLogArray;->mLogId:I

    invoke-virtual {v1, p1, p2, p3, v3}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->update(ILjava/lang/String;FI)V

    .line 68
    iget-object v1, p0, Lcom/android/launcher3/logging/EventLogArray;->logs:[Lcom/android/launcher3/logging/EventLogArray$EventEntry;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->-$$Nest$fgetduplicateCount(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->-$$Nest$fputduplicateCount(Lcom/android/launcher3/logging/EventLogArray$EventEntry;I)V

    .line 69
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/logging/EventLogArray;->logs:[Lcom/android/launcher3/logging/EventLogArray$EventEntry;

    iget v3, p0, Lcom/android/launcher3/logging/EventLogArray;->nextIndex:I

    aget-object v4, v1, v3

    if-nez v4, :cond_1

    .line 73
    new-instance v4, Lcom/android/launcher3/logging/EventLogArray$EventEntry;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;-><init>(Lcom/android/launcher3/logging/EventLogArray$EventEntry-IA;)V

    aput-object v4, v1, v3

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/logging/EventLogArray;->logs:[Lcom/android/launcher3/logging/EventLogArray$EventEntry;

    iget v3, p0, Lcom/android/launcher3/logging/EventLogArray;->nextIndex:I

    aget-object v1, v1, v3

    iget v3, p0, Lcom/android/launcher3/logging/EventLogArray;->mLogId:I

    invoke-virtual {v1, p1, p2, p3, v3}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->update(ILjava/lang/String;FI)V

    .line 76
    iget v1, p0, Lcom/android/launcher3/logging/EventLogArray;->nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/android/launcher3/logging/EventLogArray;->logs:[Lcom/android/launcher3/logging/EventLogArray$EventEntry;

    array-length v3, v3

    rem-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/logging/EventLogArray;->nextIndex:I

    .line 77
    return-void
.end method

.method private isEntrySame(Lcom/android/launcher3/logging/EventLogArray$EventEntry;ILjava/lang/String;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/launcher3/logging/EventLogArray$EventEntry;
    .param p2, "type"    # I
    .param p3, "event"    # Ljava/lang/String;

    .line 128
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->-$$Nest$fgettype(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->-$$Nest$fgetevent(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$clear$0(I)Lcom/android/launcher3/logging/EventLogArray$EventEntry;
    .locals 1
    .param p0, "i"    # I

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/launcher3/logging/EventLogArray;->addLog(ILjava/lang/String;F)V

    .line 52
    return-void
.end method

.method public addLog(Ljava/lang/String;I)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # I

    .line 55
    int-to-float v0, p2

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher3/logging/EventLogArray;->addLog(ILjava/lang/String;F)V

    .line 56
    return-void
.end method

.method public addLog(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Z

    .line 59
    if-eqz p2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/launcher3/logging/EventLogArray;->addLog(ILjava/lang/String;F)V

    .line 60
    return-void
.end method

.method public clear()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/logging/EventLogArray;->logs:[Lcom/android/launcher3/logging/EventLogArray$EventEntry;

    new-instance v1, Lcom/android/launcher3/logging/EventLogArray$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/logging/EventLogArray$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 81
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EventLog ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/logging/EventLogArray;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") history:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "  HH:mm:ss.SSSZ  "

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 86
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 88
    .local v1, "date":Ljava/util/Date;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/logging/EventLogArray;->logs:[Lcom/android/launcher3/logging/EventLogArray$EventEntry;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 89
    iget v4, p0, Lcom/android/launcher3/logging/EventLogArray;->nextIndex:I

    array-length v5, v3

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    array-length v5, v3

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    .line 90
    .local v3, "log":Lcom/android/launcher3/logging/EventLogArray$EventEntry;
    if-nez v3, :cond_0

    .line 91
    goto/16 :goto_2

    .line 93
    :cond_0
    invoke-static {v3}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->-$$Nest$fgettime(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->-$$Nest$fgetevent(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 97
    .local v4, "msg":Ljava/lang/StringBuilder;
    invoke-static {v3}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->-$$Nest$fgettype(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)I

    move-result v5

    const-string v6, ": "

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 99
    :pswitch_0
    const-string v5, ": false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    goto :goto_1

    .line 102
    :pswitch_1
    const-string v5, ": true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    goto :goto_1

    .line 108
    :pswitch_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->-$$Nest$fgetextras(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    goto :goto_1

    .line 105
    :pswitch_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->-$$Nest$fgetextras(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 106
    nop

    .line 112
    :goto_1
    invoke-static {v3}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->-$$Nest$fgetduplicateCount(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)I

    move-result v5

    if-lez v5, :cond_1

    .line 113
    const-string v5, " & "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->-$$Nest$fgetduplicateCount(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " similar events"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    const-string v5, " traceId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/launcher3/logging/EventLogArray$EventEntry;->-$$Nest$fgettraceId(Lcom/android/launcher3/logging/EventLogArray$EventEntry;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 88
    .end local v3    # "log":Lcom/android/launcher3/logging/EventLogArray$EventEntry;
    .end local v4    # "msg":Ljava/lang/StringBuilder;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 118
    .end local v2    # "i":I
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public generateAndSetLogId()I
    .locals 2

    .line 122
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 123
    .local v0, "r":Ljava/util/Random;
    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/launcher3/logging/EventLogArray;->mLogId:I

    .line 124
    return v1
.end method
